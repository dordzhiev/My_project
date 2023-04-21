import 'package:courier_app/utils/widget_utils.dart';
import 'package:flutter/material.dart';

class DetailsContentPart extends StatelessWidget {
  const DetailsContentPart({
    super.key,
    this.icon,
    this.buttons,
    required this.children,
  });

  final IconData? icon;
  final Widget? buttons;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    List<Widget> separatedList = separateWidgets(
      children,
      const SizedBox(height: 8.0),
    );
    final columnWidgets = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: separatedList,
    );
    return Padding(
      padding: const EdgeInsets.only(left: 16.0,top: 8.0,bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon != null ? Icon(icon) : const SizedBox(width: 22.0),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: columnWidgets,
                ),
                if (buttons != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: buttons!,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
