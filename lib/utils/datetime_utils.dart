import 'package:intl/intl.dart';

class DateTimeUtils {
  static String formatDateTime(DateTime dateTime) {
    final dateOfCreation = DateFormat('dd.MM.y HH:mm').format(dateTime);
    return dateOfCreation;
  }
}
