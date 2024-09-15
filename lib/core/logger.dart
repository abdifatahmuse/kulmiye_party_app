import 'package:logger/logger.dart';

Logger logger = Logger(
  filter: Logger.defaultFilter(),
  printer: PrettyPrinter(
    colors: true, // Colorful log messages
    printEmojis: true, // Print an emoji for each log message
    printTime: false, // Should each log print contain a timestamp
  ),
  level: Logger.level,
);
