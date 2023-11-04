import 'package:courier_app/utils/widget_utils.dart';
import 'package:flutter/material.dart';

class PersonalDataActions extends StatelessWidget {
  const PersonalDataActions({super.key, required this.buttons});

  final List<Widget> buttons;

  @override
  Widget build(BuildContext context) {
    final separated = separateWidgets(buttons, const SizedBox(width: 8.0));
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: separated),
    );
  }
}
