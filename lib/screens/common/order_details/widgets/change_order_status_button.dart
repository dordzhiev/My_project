import 'dart:async';

import 'package:flutter/material.dart';

class ChangeOrderStatusButton extends StatefulWidget {
  const ChangeOrderStatusButton({
    super.key,
    required this.sendNewStatus,
    required this.buttonText,
  });

  final FutureOr Function() sendNewStatus;
  final String buttonText;

  @override
  State<ChangeOrderStatusButton> createState() =>
      _ChangeOrderStatusButtonState();
}

class _ChangeOrderStatusButtonState extends State<ChangeOrderStatusButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: FilledButton(
            onPressed: isLoading ? null : action,
            child: Text(widget.buttonText),
          ),
        ),
      ],
    );
  }

  void action() async {
    setState(() {
      isLoading = true;
    });
    await widget.sendNewStatus();
    setState(() {
      isLoading = false;
    });
  }
}
