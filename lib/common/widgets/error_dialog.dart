import 'dart:async';

import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String errorMessage;
  final FutureOr Function()? action;

  const ErrorDialog(this.errorMessage, {super.key, this.action});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Ошибка'),
      content: Text(errorMessage),
      actions: <Widget>[
        if (action == null)
          ElevatedButton(
            onPressed: () => Navigator.maybeOf(context)?.pop(),
            child: const Text('OK'),
          )
        else
          ElevatedButton(
            onPressed: () async {
              await action!();
              Navigator.maybeOf(context)?.pop();
            },
            child: const Text('Открыть'),
          ),
      ],
    );
  }
}
