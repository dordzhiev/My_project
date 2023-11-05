import 'package:intl/intl.dart';

class DateTimeUtils {
  static String formatDateTime(DateTime dateTime) {
    return DateFormat('dd.MM.y HH:mm').format(dateTime);
  }
  static String formatTime(DateTime dateTime) {
    return DateFormat('Hm').format(dateTime);
  }
}
