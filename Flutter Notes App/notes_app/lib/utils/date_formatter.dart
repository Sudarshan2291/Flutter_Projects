import 'package:intl/intl.dart';

String formattedDate() {
  final now = DateTime.now();
  return DateFormat('yyyy-MM-dd – HH:mm').format(now);
}
