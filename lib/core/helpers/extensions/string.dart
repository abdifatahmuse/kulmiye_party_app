// import 'package:firebase_performance/firebase_performance.dart';
import 'package:intl/intl.dart';

final symbolSet = {' ', '.', '/', '_', '\\', '-'};

// typedef ResponseContentLengthMethod = isNullOrWhiteSpace() => (isEmpty || this == " ") ? true : false;

extension StringHelpers on String {
  // Format the String Number
  String formatter() {
    return toUpperCase();
  }

  String format() {
    try {
      String value = toString();

      if (value == "-0.00" || value == '-0') {
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

  /// Converts all characters in this string to USD Currency.
  ///
  /// Example :
  /// ```
  /// 'ABC'.currency(); // '$ 12,300.40'
  /// ```

  String currency() {
    try {
      String value = this;

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

  // HttpMethod? asHttpMethod() {
  //   switch (toUpperCase()) {
  //     case "POST":
  //       return HttpMethod.Post;
  //     case "GET":
  //       return HttpMethod.Get;
  //     case "DELETE":
  //       return HttpMethod.Delete;
  //     case "PUT":
  //       return HttpMethod.Put;
  //     case "PATCH":
  //       return HttpMethod.Patch;
  //     case "OPTIONS":
  //       return HttpMethod.Options;
  //     default:
  //       return null;
  //   }
  // }

// NumberParsing

  int parseInt() {
    return int.parse(this);
  }
  // ···

  double parseDouble() {
    return double.parse(this);
  }

  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  // String capitalizeAll() {
  //   // final List<String> splitStr = split(" ");

  //   for (int i = 0; i < splitStr.length; i++) {
  //     if (symbolSet.contains(splitStr[i])) {
  //       continue;
  //     } else {
  //       splitStr[i] =
  //           '${splitStr[i].substring(0, 1).toUpperCase()}${splitStr[i].substring(1)}';
  //     }
  //   }
  //   final output = splitStr.join(' ');
  //   return output;
  // }

  String display() {
    String value = this;

    // ignore: unnecessary_null_comparison
    if (value.isNullOrWhiteSpace() || value == null || value == "null") {
      return '';
    }
    return value;
  }

  String phoneValidate() {
    String value = this;

    if (value.isNullOrWhiteSpace() ||
        // ignore: unnecessary_null_comparison
        value == null ||
        value == "null" ||
        value.length > 10) {
      return '';
    }
    return value;
  }

  bool isNullOrWhiteSpace() =>
      // ignore: unnecessary_null_comparison
      (isEmpty || this == " " || this == "" || this == null) ? true : false;
  // String get isNullOrWhiteSpaceS => (isEmpty || this == " ") ? true : false;

  String getFirstCharacters(int limitTo) {
    String value = this;
    var buffer = StringBuffer();
    var split = value.split(' ');
    for (var i = 0; i < (limitTo ?? split.length); i++) {
      buffer.write(split[i][0]);
    }

    return buffer.toString();
  }
}

extension AssetsHelper on String {
  String get pngIcon => 'assets/icons/$this.png';

  String get svgIcon => 'assets/svg/$this.png';

  String get jpgImage => 'assets/images/$this.png';
}
