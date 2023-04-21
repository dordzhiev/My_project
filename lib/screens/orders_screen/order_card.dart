import 'package:courier_app/common/graphql/fragments/order.graphql.dart';
import 'package:courier_app/common/graphql/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderCard extends StatelessWidget {
  const OrderCard(this.order, {super.key});

  final Fragment$Order order;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final dateFormat = DateFormat('HH:mm (dd.MM.yyyy)');
    final formattedDate = dateFormat.format(order.createdAt);
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _currentStatus(themeData),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.event),
                const SizedBox(width: 8),
                Text(formattedDate),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              order.restaurantName != null && order.restaurantName!.isNotEmpty
                  ? '${order.restaurantName!}:'
                  : 'Отправитель:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(order.restaurantAddress),
            const SizedBox(height: 8),
            Text(
              order.customerName != null && order.customerName!.isNotEmpty
                  ? '${order.customerName!}:'
                  : 'Получатель:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(order.customerAddress),
          ],
        ),
      ),
    );
  }

  Widget _currentStatus(ThemeData themeData) {
    switch (order.status) {
      case Enum$OrderStatus.REGISTERED:
      case Enum$OrderStatus.READY:
        final date = DateFormat('Hm', 'ru_RU').format(
          order.expectedReadyTime.toLocal(),
        );
        return Text(
          'Забрать до ${date}',
          style: themeData.textTheme.titleLarge?.copyWith(
            fontSize: 18.0,
            color: Colors.green.shade900,
          ),
        );
      case Enum$OrderStatus.ON_THE_WAY:
        final date = DateFormat('Hm', 'ru_RU').format(
          order.expectedDeliveryTime.toLocal(),
        );
        return Text(
          'Доставить до ${date}',
          style: themeData.textTheme.titleLarge?.copyWith(
            fontSize: 18.0,
            color: Colors.orange.shade900,
          ),
        );
      case Enum$OrderStatus.CANCELED:
        return Text(
          'Отменён',
          style: themeData.textTheme.titleLarge?.copyWith(
            fontSize: 18.0,
            color: Colors.red.shade900,
          ),
        );
      case Enum$OrderStatus.DELIVERED:
      case Enum$OrderStatus.$unknown:
        return Text(
          'Доставлен',
          style: themeData.textTheme.titleLarge?.copyWith(
            fontSize: 18.0,
          ),
        );
    }
  }
}
