import 'dart:async';
import 'dart:isolate';

import 'package:courier_app/services/foreground_service/taskhandler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

@pragma('vm:entry-point')
void startCallback() {
  FlutterForegroundTask.setTaskHandler(MyTaskHandler());
}

class ForegroundService {
  StreamSubscription? _eventSubscription;
  ReceivePort? _receivePort;

  void _initForegroundTask() {
    FlutterForegroundTask.init(
      androidNotificationOptions: AndroidNotificationOptions(
        channelId: 'notification_channel_id',
        channelName: 'Foreground Notification',
        channelDescription:
            'This notification appears when the foreground service is running.',
        channelImportance: NotificationChannelImportance.LOW,
        priority: NotificationPriority.LOW,
        iconData: const NotificationIconData(
          resType: ResourceType.mipmap,
          resPrefix: ResourcePrefix.ic,
          name: 'launcher',
          backgroundColor: Colors.orange,
        ),
        buttons: [
          const NotificationButton(id: 'declineOrders', text: 'Не принимать заказы'),
        ],
      ),
      iosNotificationOptions: const IOSNotificationOptions(),
      foregroundTaskOptions: const ForegroundTaskOptions(
        interval: 1000,
        autoRunOnBoot: true,
        allowWifiLock: true,
      ),
    );
  }

  T? _ambiguate<T>(T? value) => value;

  ForegroundService() {
    _initForegroundTask();
    _ambiguate(WidgetsBinding.instance)?.addPostFrameCallback((_) async {
      if (await FlutterForegroundTask.isRunningService) {
        final newReceivePort = FlutterForegroundTask.receivePort;
        _registerReceivePort(newReceivePort);
      }
    });
  }

  Future<bool> startForegroundTask() async {
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    final notificationsPlugin = flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    if (!(await notificationsPlugin?.requestPermission() ?? false)) {
      throw "Необходимо разрешение на отправку уведомлений.";
    }

    if (!await FlutterForegroundTask.canDrawOverlays) {
      final isGranted = await FlutterForegroundTask.openSystemAlertWindowSettings();
      if (!isGranted) {
        throw "Необходимо разрешение на создание окон поверх других приложений.";
      }
    }

    final ReceivePort? receivePort = FlutterForegroundTask.receivePort;
    final bool isRegistered = _registerReceivePort(receivePort);
    if (!isRegistered) {
      throw "Failed to register receivePort!";
    }

    if (await FlutterForegroundTask.isRunningService) {
      return FlutterForegroundTask.restartService();
    } else {
      return FlutterForegroundTask.startService(
        notificationTitle: 'Foreground Service is running',
        notificationText: 'Tap to return to the app',
        callback: startCallback,
      );
    }
  }

  bool _registerReceivePort(ReceivePort? newReceivePort) {
    if (newReceivePort == null) {
      return false;
    }

    _closeReceivePort();

    _receivePort = newReceivePort;
    _eventSubscription = _receivePort?.listen((message) {
      // if (message is int) {
      //   print('eventCount: $message');
      // } else if (message is String) {
      //   if (message == 'onNotificationPressed') {
      //     // Navigator.of(context).pushNamed('/resume-route');
      //   }
      // } else if (message is DateTime) {
      //   print('timestamp: ${message.toString()}');
      // }
    });

    return _receivePort != null;
  }

  void _closeReceivePort() {
    _receivePort?.close();
    _receivePort = null;
  }

  bool get isActive => _eventSubscription != null ? true : false;

  Future<void> stopForegroundTask() async {
    await FlutterForegroundTask.stopService();
    _eventSubscription?.cancel();
    _eventSubscription = null;
  }
}
