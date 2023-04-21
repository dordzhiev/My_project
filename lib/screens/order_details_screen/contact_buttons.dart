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
          onPressed: () => launchUrlString('https://www.google.com/maps/'),
          icon: const Icon(Icons.pin_drop_outlined),
          label: const Text('На карте'),
        ),
      if (phoneNumber != null)
        OutlinedButton.icon(
          onPressed: () => launchUrlString('https://www.google.com/maps/'),
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
}
