import 'package:intl/intl.dart';

/// Number helpers

extension Sill on double {
  String get Fixed => toStringAsFixed(2);

  /// Converts all characters in this string to USD Currency.
  ///
  /// Example :
  /// ```
  /// 'ABC'.currency(); // '$ 12,300.40'
  /// ```
  String currency() {
    try {
      String value = toString();

      if (value == "-0.00") {
        value = "0.00"; // Very weird way of removing minus sign from the value!
      }

      if (value.contains(".")) {
        return "\$ ${NumberFormat("#,###.###", "en_US").format(double.parse(value))}";
      } else {
        return "\$ ${NumberFormat("#,###", "en_US").format(int.parse(value))}";
      }
    } catch (e) {
      return "\$ 0.00";
    }
  }

  /// Converts all characters in this string to USD Currency.
  ///
  /// Example :
  /// ```
  /// 'ABC'.currency(); // '$ 12,300.40'
  /// ```
  String format() {
    try {
      String value = toString();

      if (value == "-0.00") {
        value = "0.00"; // Very weird way of removing minus sign from the value!
      }

      if (value.contains(".")) {
        return NumberFormat("#,###.###", "en_US")
            .format(double.parse(value))
            .toString();
      } else {
        return NumberFormat("#,###", "en_US")
            .format(int.parse(value))
            .toString();
      }
    } catch (e) {
      return "0.00";
    }
  }
}

//