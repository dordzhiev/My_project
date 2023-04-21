import 'package:courier_app/utils/widget_utils.dart';
import 'package:flutter/material.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final separated = separateWidgets(children, const Divider());
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: separated,
        ),
      ),
    );
  }
}
