import 'package:courier_app/common/errors/permissions.dart';
import 'package:courier_app/common/widgets/error_dialog.dart';
import 'package:courier_app/providers/working_status_provider.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

class AcceptingOrdersButton extends StatefulWidget {
  const AcceptingOrdersButton({
    super.key,
  });

  @override
  State<AcceptingOrdersButton> createState() => _AcceptingOrdersButtonState();
}

class _AcceptingOrdersButtonState extends State<AcceptingOrdersButton> {
  bool isLoading = false;
  late WorkingStatusProvider w_s_provider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ScaffoldMessenger.maybeOf(context)?.showSnackBar(
    //   SnackBar(content: Text(profileProvider!.errorMessage)),
    // );
  }

  @override
  Widget build(BuildContext context) {
    w_s_provider = context.watch<WorkingStatusProvider>();
    return !w_s_provider.isAcceptingOrders
        ? FloatingActionButton.extended(
            backgroundColor: w_s_provider.isLoading
                ? Colors.grey.shade400
                : Colors.green.shade700,
            foregroundColor: const Color(0xFFFFFFFF),
            label: const Text("Принимать заказы"),
            icon: const Icon(Icons.directions_bike),
            onPressed: w_s_provider.isLoading ? null : _handleAcceptOrders,
          )
        : FloatingActionButton.extended(
            backgroundColor: w_s_provider.isLoading
                ? Colors.grey.shade400
                : Colors.red.shade700,
            foregroundColor: const Color(0xFFFFFFFF),
            label: const Text("Не принимать заказы"),
            icon: const Icon(Icons.close),
            onPressed: w_s_provider.isLoading ? null : handleDeclineOrders,
          );
  }

  void _handleAcceptOrders() async {
    try {
      await w_s_provider.handleAcceptOrders();
    } on LocationServiceDisabledException {
      await showDialog(
        context: context,
        builder: (context) => const ErrorDialog(
          'Включите службы определения местоположения.',
          action: Geolocator.openLocationSettings,
        ),
      );
    } on LocationPermissionDeniedForever catch (e) {
      await showDialog(
        context: context,
        builder: (context) => ErrorDialog(
          e.toString(),
          action: Geolocator.openAppSettings,
        ),
      );
    } on PreciseAccuracyTurnedOff catch (e) {
      await showDialog(
        context: context,
        builder: (context) => ErrorDialog(
          e.toString(),
          action: Geolocator.openAppSettings,
        ),
      );
    } on PostNotificationDenied catch (e) {
      await showDialog(
        context: context,
        builder: (context) => ErrorDialog(
          e.toString(),
          action: Geolocator.openAppSettings,
        ),
      );
    } on SystemAlertWindowsDenied catch (e) {
      await showDialog(
        context: context,
        builder: (context) => ErrorDialog(e.toString()),
      );
    } catch (e) {
      await showDialog(
        context: context,
        builder: (context) => ErrorDialog(e.toString()),
      );
    }
  }

  void handleDeclineOrders() async {
    try {
      await w_s_provider.handleDeclineOrders();
    } catch (e) {
      await showDialog(
        context: context,
        builder: (context) => ErrorDialog(e.toString()),
      );
    }
  }
}
