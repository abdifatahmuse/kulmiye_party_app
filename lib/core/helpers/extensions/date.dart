import 'package:intl/intl.dart';

String _monthLetter = "yyyy-MMM";
String _monthNumber = "yyyy-MM";
String _fullMonLett = "yyyy-MMM-d";
String _fullNumber = "yyyy-MM-d";
String _fullWithTimeLett = "yyyy-MMM-ddd HH:mm:ss";
String _fullWithTime = "yyyy-MM-dd HH:mm:ss";

/// Date Helper's
extension Formatter on DateTime {
  ///
  /// example: 2024-Feb
  String get toMonthLet => DateFormat(_monthLetter).format(this);

  /// example: 2024-02
  String get toMonthNum => DateFormat(_monthNumber).format(this);

  ///
  /// example: 2024-Feb-1
  String get toLetter => DateFormat(_fullMonLett).format(this);

  ///
  /// example: 2024-Feb-1 12:12:12
  String get toLetterWTime => DateFormat(_fullWithTimeLett).format(this);

  ///
  /// example: 2024-02-1
  String get toNumber => DateFormat(_fullNumber).format(this);

  ///
  /// example: 2024-02-1 12:12:12
  String get toNumberWTime => DateFormat(_fullWithTime).format(this);
}


// /// Date Helper's
// extension Formatter on DateTime {
//   ///
//   /// example: 2024-Feb
//   ///
//   String get ToMonthLet => DateFormat(_monthLetter).format(this);

//   ///
//   /// example: 2024-02
//   ///
//   String get ToMonthNum => DateFormat(_monthNumber).format(this);

//   ///
//   /// example: 2024-Feb-1
//   ///
//   String get ToLetter => DateFormat(_fullMonLett).format(this);

//   ///
//   /// example: 2024-Feb-1 12:12:12
//   ///
//   String get ToLetterWTime => DateFormat(_fullWithTimeLett).format(this);

//   ///
//   /// example: 2024-02-1
//   ///
//   String get ToNumber => DateFormat(_fullNumber).format(this);

//   ///
//   /// example: 2024-02-1 12:12:12
//   ///
//   String get ToNumberWTime => DateFormat(_fullWithTime).format(this);
// }

// /// Date Helper's
// extension FormatterForString on String {
//   ///
//   /// example: 2024-Feb
//   ///
//   String get ToDateMonthLet =>
//       DateFormat(_monthLetter).format(DateTime.parse(this));

//   ///
//   /// example: 2024-02
//   ///
//   String get ToDateMonthNum =>
//       DateFormat(_monthNumber).format(DateTime.parse(this));

//   ///
//   /// example: 2024-Feb-1
//   ///
//   String get ToDateLetter =>
//       DateFormat(_fullMonLett).format(DateTime.parse(this));

//   ///
//   /// example: 2024-Feb-1 12:12:12
//   ///
//   String get ToDateLetterWTime =>
//       DateFormat(_fullWithTimeLett).format(DateTime.parse(this));

//   ///
//   /// example: 2024-02-1
//   ///
//   String get ToDateNumber =>
//       DateFormat(_fullNumber).format(DateTime.parse(this));

//   ///
//   /// example: 2024-02-1 12:12:12
//   ///
//   String get toNumberWTime =>
//       DateFormat(_fullWithTime).format(DateTime.parse(this));
// }
