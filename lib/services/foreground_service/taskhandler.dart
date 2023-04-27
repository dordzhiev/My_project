import 'dart:isolate';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';

class MyTaskHandler extends TaskHandler {
  SendPort? _sendPort;
  int _eventCount = 0;
  DateTime? startTime;

  @override
  Future<void> onStart(DateTime timestamp, SendPort? sendPort) async {
    startTime = timestamp;
    _sendPort = sendPort;

    // final customData = await FlutterForegroundTask.getData<String>(key: 'customData');
    // print('customData: $customData');
  }

  @override
  Future<void> onDestroy(DateTime timestamp, SendPort? sendPort) async {
    await FlutterForegroundTask.clearAllData();
  }

  @override
  Future<void> onEvent(DateTime timestamp, SendPort? sendPort) async {
    final hours = padToTwoDigits(_eventCount ~/ 3600 % 24);
    final minutes = padToTwoDigits(_eventCount ~/ 60 % 60);
    final seconds = padToTwoDigits(_eventCount % 60);
    final s_counted = "$hours:$minutes:$seconds";

    final difference = timestamp.difference(startTime!);
    final d_hours = padToTwoDigits(difference.inHours % 24);
    final d_minutes = padToTwoDigits(difference.inMinutes % 60);
    final d_seconds = padToTwoDigits(difference.inSeconds % 60);
    final s_difference = "$d_hours:$d_minutes:$d_seconds";

    await FlutterForegroundTask.updateService(
      notificationTitle: 'Вы на линии..',
      notificationText: 'Время: $s_counted ($s_difference)',
    );

    _sendPort?.send(_eventCount);

    _eventCount++;
  }

  String padToTwoDigits(int source) {
    return source.toString().padLeft(2, '0');
  }

  @override
  void onButtonPressed(String id) {
    print('onButtonPressed >> $id');
  }

  @override
  void onNotificationPressed() {
    FlutterForegroundTask.launchApp("/");
    _sendPort?.send('onNotificationPressed');
  }
}
