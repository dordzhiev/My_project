import 'package:courier_app/common/graphql/fragments/order.graphql.dart';
import 'package:courier_app/common/graphql/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class OrderCard extends StatelessWidget {
  const OrderCard(this.order, {super.key, this.onTap});

  final Fragment$Order order;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16.0),
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.08),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildOrderCardHeader(context),
            const SizedBox(height: 8),
            _buildRestaurantAddress(),
            const SizedBox(height: 4),
            _buildCustomerAddress(),
            const SizedBox(height: 4),
            _buildBottomMeta(context),
          ],
        ),
      ),
    );
  }

  Row _buildOrderCardHeader(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Row(
            children: [
              _buildStatus(context),
              const SizedBox(width: 8),
              Flexible(child: _buildOrderCardTitle(context)),
            ],
          ),
        ),
        const SizedBox(width: 8),
        _buildPrices(),
      ],
    );
  }

  Widget _buildStatus(BuildContext context) {
    final currentStatus = _getStatus();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      decoration: BoxDecoration(
        color: currentStatus.$2,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Text(
        currentStatus.$1,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Text _buildPrices() {
    final totalCost = order.orderAmount + order.deliveryCostForCustomer;
    return Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: totalCost.toStringAsFixed(0),
            ),
            TextSpan(
              text: ' / +${order.deliveryCostForCustomer.toStringAsFixed(0)}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF4CAF50),
              ),
            ),
          ],
        ),
      );
  }

  Text _buildOrderCardTitle(BuildContext context) {
    return Text(
      order.restaurantName != null && order.restaurantName!.isNotEmpty
          ? order.restaurantName!
          : 'Отправитель',
      style: Theme.of(context).textTheme.titleMedium,
      overflow: TextOverflow.ellipsis,
    );
  }

  (String text, Color color) _getStatus() {
    switch (order.status) {
      case Enum$OrderStatus.REGISTERED:
      case Enum$OrderStatus.READY:
        final time = intl.DateFormat('Hm', 'ru_RU').format(
          order.expectedReadyTime.toLocal(),
        );
        return ('Забрать до $time', const Color(0xFF2196F3));
      case Enum$OrderStatus.ON_THE_WAY:
        final time = intl.DateFormat('Hm', 'ru_RU').format(
          order.expectedDeliveryTime.toLocal(),
        );
        return ('Доставить до $time', const Color(0xFFFFC107));
      case Enum$OrderStatus.CANCELED:
        return ('Отменён', const Color(0xFFF44336));
      case Enum$OrderStatus.DELIVERED:
      case Enum$OrderStatus.$unknown:
        return ('Доставлен', const Color(0xFF4CAF50));
    }
  }

  Widget _buildRestaurantAddress() {
    return Address(iconData: Icons.shopping_bag, address: order.restaurantAddress);
  }

  Widget _buildCustomerAddress() {
    return Address(iconData: Icons.person, address: order.customerAddress);
  }

  Align _buildBottomMeta(BuildContext context) {
    final formattedDate = intl.DateFormat('Hm').format(order.createdAt);
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        formattedDate,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.45),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Address extends StatelessWidget {
  const Address({
    super.key,
    required this.address,
    required this.iconData,
  });

  final String address;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(iconData, size: 20.0),
        const SizedBox(width: 8.0),
        Expanded(
          child: Text(
            address,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
