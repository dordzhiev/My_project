import 'dart:async';
import 'dart:isolate';

import 'package:courier_app/services/api_service.dart';
import 'package:courier_app/utils/geo_utils.dart';
import 'package:courier_app/services/locator.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';

class MyTaskHandler extends TaskHandler {
  SendPort? _sendPort;
  int _eventCount = 0;
  DateTime? startTime;
  StreamSubscription? streamSubscription;

@override
Future<void> onStart(DateTime timestamp, SendPort? sendPort) async {
  await setupLocator();

  startTime = timestamp;
  _sendPort = sendPort;

  try {
    final pos = await GeoHelper.getPosition();
    GetIt.I<APIService>().startSession(pos.latitude, pos.longitude);
  } catch (e) {
    await FlutterForegroundTask.updateService(
      notificationTitle: 'Ошибка!',
      notificationText: e.toString(),
    );
  }

  try {
    streamSubscription = Geolocator.getPositionStream(
      locationSettings: AndroidSettings(
        accuracy: LocationAccuracy.bestForNavigation,
        intervalDuration: const Duration(seconds: 5),
      ),
    ).listen((Position pos) async {
      await GetIt.I<APIService>().updateLocation(pos.latitude, pos.longitude);
    });
  } catch (e) {
    await FlutterForegroundTask.updateService(
      notificationTitle: 'Ошибка!',
      notificationText: e.toString(),
    );
  }
}

  @override
  Future<void> onDestroy(DateTime timestamp, SendPort? sendPort) async {
    // getIt<APIService>()
    await FlutterForegroundTask.clearAllData();
    streamSubscription?.cancel();
  }

  @override
  Future<void> onRepeatEvent(DateTime timestamp, SendPort? sendPort) async {
    final hours = padToTwoDigits(_eventCount ~/ 3600 % 24);
    final minutes = padToTwoDigits(_eventCount ~/ 60 % 60);
    final seconds = padToTwoDigits(_eventCount % 60);
    final sCounted = "$hours:$minutes:$seconds";

    final difference = timestamp.difference(startTime!);
    final dHours = padToTwoDigits(difference.inHours % 24);
    final dMinutes = padToTwoDigits(difference.inMinutes % 60);
    final dSeconds = padToTwoDigits(difference.inSeconds % 60);
    final sDifference = "$dHours:$dMinutes:$dSeconds";

    _sendPort?.send(_eventCount);

    _eventCount++;

    Position pos;
    String? error;
    await FlutterForegroundTask.updateService(
      notificationTitle: 'Вы на линии..',
      notificationText: 'Время: $sCounted ($sDifference)',
    );
    // try {
    //   pos = await GeoHelper.getCurrentPosition();
    //   await getIt<APIService>().updateLocation(pos.latitude, pos.longitude);
    //
    // } on PermissionDeniedException {
    //   error = 'Доступ к геолокации отклонён.';
    // } on LocationServiceDisabledException {
    //   error = 'Службы геолокации устройства отключены.';
    // } catch (e) {
    //   error = e.toString();
    // }
    //
    // if (error != null) {
    //   await FlutterForegroundTask.updateService(
    //     notificationTitle: 'Ошибка!',
    //     notificationText: error,
    //   );
    // }
  }

  String padToTwoDigits(int source) {
    return source.toString().padLeft(2, '0');
  }

  @override
  void onNotificationButtonPressed(String id) {
    print('onButtonPressed >> $id');
  }

  @override
  void onNotificationPressed() {
    FlutterForegroundTask.launchApp("/");
    _sendPort?.send('onNotificationPressed');
  }
}
