import 'package:courier_app/utils/geo_utils.dart';
import 'package:courier_app/utils/widget_utils.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactButtons extends StatelessWidget {
  const ContactButtons({super.key, this.address, this.phoneNumber});

  final String? address;
  final String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    final buttons = <Widget>[
      if (address != null)
        OutlinedButton.icon(
          onPressed: () async => await _openInMaps(context),
          icon: const Icon(Icons.pin_drop_outlined),
          label: const Text('На карте'),
        ),
      if (phoneNumber != null)
        OutlinedButton.icon(
          onPressed: () async => await _openInDialer(context),
          label: const Text('Позвонить'),
          icon: const Icon(Icons.phone),
        ),
    ];
    final separated = separateWidgets(buttons, const SizedBox(width: 8.0));
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: separated),
    );
  }

  Future<void> _openInDialer(BuildContext context) async {
    try {
      await launchUrlString('tel:$phoneNumber');
    } catch (e) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  Future<void> _openInMaps(BuildContext context) async {
    try {
      await GeoUtils.openInMaps("${address!}");
    } catch (e) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }
}
