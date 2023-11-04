class SystemAlertWindowsDenied implements Exception {
  @override
  String toString() {
    return "Необходимо разрешение на создание окон поверх других приложений.";
  }
}

class PostNotificationDenied implements Exception {
  @override
  String toString() {
    return "Необходимо разрешение на отправку уведомлений.";
  }
}

class PreciseAccuracyTurnedOff implements Exception {
  @override
  String toString() {
    return "Необходимо включить использование точного местоположения.";
  }
}

class LocationPermissionDeniedForever implements Exception {
  @override
  String toString() {
    return "Необходимо разрешение доступа к местоположению.";
  }
}


class LocationServiceDisabled implements Exception {
  @override
  String toString() {
    return "Необходимо разрешение доступа к местоположению.";
  }
}