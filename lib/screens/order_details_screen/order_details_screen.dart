import 'package:courier_app/common/graphql/fragments/order.graphql.dart';
import 'package:courier_app/common/graphql/schema.graphql.dart';
import 'package:courier_app/common/widgets/error_dialog.dart';
import 'package:courier_app/screens/order_details_screen/contact_buttons.dart';
import 'package:courier_app/screens/order_details_screen/details_content.dart';
import 'package:courier_app/screens/order_details_screen/details_content_part.dart';
import 'package:courier_app/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key, required this.order});

  final Fragment$Order order;

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  late Fragment$Order order;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    order = widget.order;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Заказ #${order.id}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(),
            DetailsContent(
              children: [
                _buildOrderDetails(),
                _buildRestaurantDetails(),
                _buildCustomerDetails(),
                if (order.orderDescription != null ||
                    order.customerComment != null)
                  _buildComments(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [],
      ),
    );
  }

  Widget _buildOrderDetails() {
    return DetailsContentPart(
      icon: Icons.shopping_basket,
      buttons: _action(),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Статус:'),
            Text(_getCurrentStatus()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Тип оплаты:'),
            Text(_getPaymentType()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Сумма заказа:'),
            Text('${order.orderAmount.toInt()} руб'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Стоимость доставки:'),
            Text('${order.deliveryCostForCustomer.toInt()} руб'),
          ],
        ),
      ],
    );
  }

  Widget? _action() {
    String actionName;
    Enum$OrderStatus? nextStatus;
    switch (order.status) {
      case Enum$OrderStatus.REGISTERED:
      case Enum$OrderStatus.READY:
        actionName = 'Забрал заказ';
        nextStatus = Enum$OrderStatus.ON_THE_WAY;
        break;
      case Enum$OrderStatus.ON_THE_WAY:
        if (order.isPaymentCompleted || order.isPrepaidToPartner) {
          actionName = 'Отдал заказ';
        } else {
          actionName = 'Получил оплату';
        }
        nextStatus = Enum$OrderStatus.DELIVERED;
        break;
      case Enum$OrderStatus.CANCELED:
      case Enum$OrderStatus.DELIVERED:
      case Enum$OrderStatus.$unknown:
      default:
        actionName = 'Подробности';
    }
    if (nextStatus != null) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: FilledButton(
              onPressed: isLoading
                  ? null
                  : () async {
                      setState(() {
                        isLoading = true;
                      });
                      try {
                        await GetIt.instance<APIService>().changeOrderStatus(
                          order.id.toDouble(),
                          nextStatus!,
                        );
                        order = order.copyWith(status: nextStatus);
                      } catch (e) {
                        await showDialog(
                          context: context,
                          builder: (context) => ErrorDialog(e.toString()),
                        );
                      }
                      setState(() {
                        isLoading = false;
                      });
                    },
              child: Text(actionName),
            ),
          ),
        ],
      );
    } else {
      return null;
    }
  }

  Widget _buildRestaurantDetails() {
    return DetailsContentPart(
      icon: Icons.storefront_outlined,
      buttons: _buildHorizontalButtonsRow(
        phoneNumber: order.restaurantPhoneNumber,
        address: order.restaurantAddress,
      ),
      children: [
        if (order.restaurantName != null && order.restaurantName!.isNotEmpty)
          Text(
            order.restaurantName!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        Text(order.restaurantAddress),
        if (order.restaurantPhoneNumber != null)
          Text(_formatPhoneNumber(order.restaurantPhoneNumber!)),
      ],
    );
  }

  Widget _buildCustomerDetails() {
    return DetailsContentPart(
      icon: Icons.person,
      buttons: _buildHorizontalButtonsRow(
        phoneNumber: order.customerPhoneNumber,
        address: order.customerAddress,
      ),
      children: [
        if (order.customerName != null && order.customerName!.isNotEmpty)
          Text(
            order.customerName!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        Text(order.customerAddress),
        Text(_formatPhoneNumber(order.customerPhoneNumber)),
      ],
    );
  }

  Widget _buildComments() {
    if (order.orderDescription != null || order.customerComment != null) {
      return DetailsContentPart(
        icon: null,
        children: [
          Text('Комментарии', style: Theme.of(context).textTheme.titleLarge),
          if (order.orderDescription != null) Text(order.orderDescription!),
          if (order.customerComment != null) Text(order.customerComment!),
        ],
      );
    }
    return const SizedBox.shrink();
  }

  String _getCurrentStatus() {
    switch (order.status) {
      case Enum$OrderStatus.REGISTERED:
        return "Зарегистрирован";
      case Enum$OrderStatus.READY:
        return "Готов";
      case Enum$OrderStatus.CANCELED:
        return "Отменён";
      case Enum$OrderStatus.ON_THE_WAY:
        return "В пути";
      case Enum$OrderStatus.DELIVERED:
        return "Доставлен";
      case Enum$OrderStatus.$unknown:
      default:
        return "Статус неизвестен";
    }
  }

  Widget _buildHorizontalButtonsRow({String? phoneNumber, String? address}) {
    if (phoneNumber != null || address != null) {
      return ContactButtons(
        address: address,
        phoneNumber: phoneNumber,
      );
    }
    return const SizedBox.shrink();
  }

  String _getPaymentType() {
    switch (order.paymentType) {
      case Enum$OrderPaymentType.CASH:
        return 'Наличные';
      case Enum$OrderPaymentType.CARD:
        return 'Карта';
      case Enum$OrderPaymentType.QR:
        return 'QR';
      case Enum$OrderPaymentType.MOBILE:
        return 'Перевод';
      case Enum$OrderPaymentType.ONLINE:
        return 'Онлайн';
      case Enum$OrderPaymentType.$unknown:
      default:
        return 'Неизвестен';
    }
  }

  String _formatPhoneNumber(String rawString) {
    String digitsOnly = rawString.replaceAll(RegExp(r'\D+'), '');
    String countryCode =
        digitsOnly.startsWith('8') ? '+7' : '+${digitsOnly[0]}';
    return '$countryCode (${digitsOnly.substring(1, 4)}) ${digitsOnly.substring(4, 7)}-${digitsOnly.substring(7, 9)}-${digitsOnly.substring(9)}';
  }
}
