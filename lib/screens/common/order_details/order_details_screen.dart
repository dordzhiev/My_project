import 'package:courier_app/common/graphql/fragments/order.graphql.dart';
import 'package:courier_app/common/graphql/schema.graphql.dart';
import 'package:courier_app/common/widgets/error_dialog.dart';
import 'package:courier_app/screens/common/order_details/widgets/change_order_status_button.dart';
import 'package:courier_app/screens/common/order_details/widgets/details_content.dart';
import 'package:courier_app/screens/common/order_details/widgets/details_content_part.dart';
import 'package:courier_app/screens/common/order_details/widgets/personal_data_actions.dart';
import 'package:courier_app/services/api_service.dart';
import 'package:courier_app/utils/datetime_utils.dart';
import 'package:courier_app/utils/geo_utils.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
        title: const Text('Подробности заказа', overflow: TextOverflow.clip),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildMetaInfo(),
            _buildContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildMetaInfo() {
    final textStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Colors.black54,
        );
    String dateOfCreation = DateTimeUtils.formatDateTime(order.createdAt);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('#${order.id}', style: textStyle),
          Text(dateOfCreation, style: textStyle)
        ],
      ),
    );
  }

  DetailsContent _buildContent() {
    return DetailsContent(
      children: [
        _buildOrderPart(),
        _buildRestaurantPart(),
        _buildCustomerPart(),
        if ((order.orderDescription?.isNotEmpty ?? false) ||
            (order.customerComment?.isNotEmpty ?? false))
          _buildCommentsPart(),
      ],
    );
  }

  Widget _buildOrderPart() {
    final totalCost = order.orderAmount + order.deliveryCostForCustomer;
    return DetailsContentPart(
      icon: Icons.shopping_basket,
      actions: _buildChangeOrderStatusButton(),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Статус:'),
            Text(_determineCurrentStatus()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Тип оплаты:'),
            Text(_determinePaymentType()),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Итого:'),
            Text('${totalCost.toInt()} руб'),
          ],
        ),
      ],
    );
  }

  Widget? _buildChangeOrderStatusButton() {
    late final String actionName;
    Enum$OrderStatus? nextStatus;

    if (order.status == Enum$OrderStatus.READY ||
        order.status == Enum$OrderStatus.REGISTERED) {
      actionName = 'Забрал заказ';
      nextStatus = Enum$OrderStatus.ON_THE_WAY;
    } else if (order.status == Enum$OrderStatus.ON_THE_WAY) {
      if (order.isPaymentCompleted || order.isPrepaidToPartner) {
        actionName = 'Отдал заказ';
      } else {
        actionName = 'Получил оплату';
      }
      nextStatus = Enum$OrderStatus.DELIVERED;
    }

    if (nextStatus != null) {
      return ChangeOrderStatusButton(
        buttonText: actionName,
        sendNewStatus: changeOrderStatus(nextStatus),
      );
    } else {
      return null;
    }
  }

  Future<void> Function() changeOrderStatus(Enum$OrderStatus nextStatus) =>
      () async {
        try {
          await GetIt.instance<APIService>().changeOrderStatus(
            order.id.toDouble(),
            nextStatus,
          );
          order = order.copyWith(status: nextStatus);
        } catch (e) {
          await showDialog(
            context: context,
            builder: (context) => ErrorDialog(e.toString()),
          );
        }
      };

  Widget _buildRestaurantPart() {
    List<Text> description = [];
    List<OutlinedButton> buttons = [];

    if (order.restaurantName != null && order.restaurantName!.isNotEmpty) {
      description.add(
        Text(
          order.restaurantName!,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      );
    }

    description.add(Text(order.restaurantAddress));

    if (order.restaurantPhoneNumber != null) {
      final formattedNum = _formatPhoneNumber(order.restaurantPhoneNumber!);

      description.add(Text(formattedNum));

      buttons.add(
        OutlinedButton.icon(
          onPressed: () async => await _openInDialer(formattedNum),
          label: const Text('Позвонить'),
          icon: const Icon(Icons.phone),
        ),
      );
    }

    buttons.add(OutlinedButton.icon(
      onPressed: () async => await _openInMaps(order.restaurantAddress),
      icon: const Icon(Icons.pin_drop_outlined),
      label: const Text('На карте'),
    ));

    return DetailsContentPart(
      icon: Icons.storefront_outlined,
      actions: PersonalDataActions(buttons: buttons),
      children: description,
    );
  }

  Future<void> _openInMaps(String address) async {
    try {
      await GeoHelper.openInMaps(address);
    } catch (e) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  Future<void> _openInDialer(String phoneNumber) async {
    try {
      await launchUrlString('tel:$phoneNumber');
    } catch (e) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  Widget _buildCustomerPart() {
    List<Text> description = [];
    final formattedNum = _formatPhoneNumber(order.customerPhoneNumber);

    if (order.customerName != null && order.customerName!.isNotEmpty) {
      description.add(
        Text(
          order.customerName!,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      );
    }

    description.addAll([Text(order.customerAddress), Text(formattedNum)]);

    List<OutlinedButton> buttons = [
      OutlinedButton.icon(
        onPressed: () async => await _openInDialer(formattedNum),
        label: const Text('Позвонить'),
        icon: const Icon(Icons.phone),
      ),
      OutlinedButton.icon(
        onPressed: () async => await _openInMaps(order.customerAddress),
        icon: const Icon(Icons.pin_drop_outlined),
        label: const Text('На карте'),
      ),
    ];

    return DetailsContentPart(
      icon: Icons.person,
      actions: PersonalDataActions(buttons: buttons),
      children: description,
    );
  }

  Widget _buildCommentsPart() {
    String formatComment(String input) {
      final lines = input.split('\n');
      final trimmedLines = lines.map((line) => line.trimLeft());
      final nonEmptyLines = trimmedLines.where((line) => line.isNotEmpty);
      final result = nonEmptyLines.join('\n');
      return result;
    }

    List<Widget> comments = [];

    if (order.orderDescription?.isNotEmpty ?? false) {
      comments.addAll([
        Text('Описание', style: Theme.of(context).textTheme.titleLarge),
        Text(formatComment(order.orderDescription!)),
      ]);
    }

    if (order.customerComment?.isNotEmpty ?? false) {
      comments.addAll([
        Text('Комментарий', style: Theme.of(context).textTheme.titleLarge),
        Text(formatComment(order.customerComment!)),
      ]);
    }

    return DetailsContentPart(
      icon: null,
      children: comments,
    );
  }

  String _determineCurrentStatus() {
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

  String _determinePaymentType() {
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
