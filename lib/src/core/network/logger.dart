import 'dart:convert';
import 'dart:io';

import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(
      methodCount: 2, // Number of method calls to be displayed
      errorMethodCount: 8, // Number of method calls if stacktrace is provided
      lineLength: 120, // Width of the output
      colors: true, // Colorful log messages
      printEmojis: true, // Print an emoji for each log message
      printTime: false // Should each log print contain a timestamp
      ),
);

class SimpleLogPrinter extends LogPrinter {
  final String? className;
  SimpleLogPrinter({this.className});

  @override
  List<String> log(LogEvent event) {
    final printer = PrettyPrinter(); // Instantiate PrettyPrinter
    final emoji = printer.levelEmojis![event.level]; // Access instance member
    final color = printer.levelColors![event.level]; // Access instance member
    final message = stringifyMessage(event.message);

    return [
      Platform.isIOS ? '$emoji$message\n' : color!('$emoji$message\n'),
    ];
  }

  String? stringifyMessage(dynamic message) {
    const decoder = JsonDecoder();
    const encoder = JsonEncoder.withIndent('  ');
    final color = AnsiColor.fg(15);

    if (message is String) {
      try {
        final raw = decoder.convert(message);
        return Platform.isAndroid
            ? color(encoder.convert(raw))
            : encoder.convert(raw);
      } catch (e) {
        return message.toString();
      }
    } else if (message is Map || message is Iterable) {
      return Platform.isAndroid
          ? color(encoder.convert(message))
          : encoder.convert(message);
    } else {
      return message.toString();
    }
  }
}
