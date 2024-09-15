import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';
import 'package:kulmiye/core/helpers/enums/enums.dart';
import 'package:kulmiye/widgets/snack_bars/snack_bars.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  Size get screenSize => MediaQuery.sizeOf(this);

  EdgeInsets get screenPadding => MediaQuery.paddingOf(this);

  TextScaler get screenTextScaleFactor => MediaQuery.textScalerOf(this);

  /// Is the screen width less than 800
  /// is Mobile Screen
  /// @isSmallScreen
  bool get isSmallScreen => screenSize.width < 800;

  /// Is the screen width less than 1200 and is greater than or equal to 800
  /// is Tablet Screen
  /// @isMediumScreen
  bool get isMediumScreen =>
      screenSize.width >= 800 && screenSize.width <= 1200;

  /// Is the screenLarge is greater than 800 and not a medium screen
  /// is Desktop Screen
  bool get isLargeScreen => screenSize.width > 800 && !isMediumScreen;

  bool get isDark => (Theme.of(this).brightness == Brightness.dark);
  // bool get isDark => MediaQuery.platformBrightnessOf(this) == Brightness.dark;

  void showSnackBar(SnackBar snackBar) {
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  void showCustomSnackBar({
    String? tag,
    required String title,
    String? description,
    required ESnackBarStatus type,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(customSnackBar(
      context: this,
      tag: tag,
      title: title,
      description: description,
      type: type,
    ));
  }

  void showSnackBarUsingText(String text) {
    final snackBar = SnackBar(
      content: Text(
        text,
        // style: TextStyle(color: isPlatformDarkThemed ? Colors.white : primary),

        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w400,
          color: !isDark ? Colors.white : primary,
        ),
      ),
    );

    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
