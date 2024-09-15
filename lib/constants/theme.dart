import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';

ThemeData themeLightMode() {
  return ThemeData(
    useMaterial3: true,
    primarySwatch: materialColorMain,

    canvasColor: Colors.white, // Stepper Step Background
    brightness: Brightness.light,
    primaryColor: primary,
    scaffoldBackgroundColor: Colors.white,

    fontFamily: appPrimaryFontFamily,

    appBarTheme: appBarTheme(),

    checkboxTheme: checkbox(),

    switchTheme: switchTheme(),

    drawerTheme: drawer(),

    dialogTheme: dialog(),

    shadowColor: blueDark.withOpacity(0.1),

    radioTheme: RadioThemeData(
      fillColor:
          WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return blueDark.withOpacity(0.3);
        }
        if (states.contains(WidgetState.selected)) {
          return primary;
        }

        if (states.contains(WidgetState.error)) {
          return Colors.amber.shade700;
        }

        return blueDark.withOpacity(0.7);
      }),
      overlayColor:
          WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.hovered)) {
          return blueDark.withOpacity(0.3);
        }
        if (states.contains(WidgetState.selected)) {
          return primary;
        }

        if (states.contains(WidgetState.error)) {
          return Colors.red.shade700;
        }

        return blueDark.withOpacity(0.7);
      }),
    ),

    listTileTheme: const ListTileThemeData(
      dense: true,
      contentPadding: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 8,
        bottom: 8,
      ),
      shape: roundedRectangleBorder,
    ),

    chipTheme: ChipThemeData(
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      padding: const EdgeInsets.only(
        right: 10,
        left: 10,
        top: 1,
        bottom: 5,
      ),
      shape: roundedRectangleBorder,
      side: BorderSide(
        width: 2,
        color: blueDark.withOpacity(0.1),
        style: BorderStyle.solid,
      ),
      elevation: 2,
      selectedColor: primary,
      secondaryLabelStyle: ThemeData().textTheme.titleMedium!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            // color: Theme.of(context)
            //     .textTheme
            //     .titleMedium!
            //     .color!
            //     .withOpacity(0.4),
          ),
      secondarySelectedColor: Colors.red,
      iconTheme: const IconThemeData(
        color: primary,
        size: 18,
      ),
      checkmarkColor: Colors.white,

      // color: const MaterialStatePropertyAll(),
    ),

    // Splash Color Effect the : {Navigation Bar , etc...}
    splashColor: Colors.transparent,
    navigationBarTheme: navigationBar(),

    progressIndicatorTheme: progressIndicator(),
    bottomNavigationBarTheme: bottomNavigationBar(),
    floatingActionButtonTheme: floatingActionBtn(),

    popupMenuTheme: PopupMenuThemeData(
      elevation: 5,
      color: Colors.white,
      shadowColor: primary.withOpacity(0.3),
      shape: roundedRectangleBorder,
      surfaceTintColor: Colors.white,
    ),

    colorScheme: colorsScheme(),
    textTheme: textTheme(),
    cardTheme: cardsTheme(),
    cardColor: Colors.white,
    dividerColor: primary,
    dividerTheme: DividerThemeData(
      color: blueDark.withOpacity(0.1),
      thickness: 1.8,
      endIndent: 6,
      indent: 6,
    ),
    // shadowColor: ThemeColor.elevationColor, // bottom navigation elevation color
    buttonTheme: buttonThemeData(),
    iconTheme: const IconThemeData(
      color: primary,
      size: 26,
    ),

    datePickerTheme: DatePickerThemeData(
      backgroundColor: Colors.white,

      // dayBackgroundColor: MaterialStatePropertyAll(Colors.transparent),
      dayBackgroundColor:
          WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return blueDark.withOpacity(0.04);
        }
        if (states.contains(WidgetState.selected)) {
          return primary;
        }

        if (states.contains(WidgetState.error)) {
          return Colors.red.shade700;
        }

        return Colors.transparent;
      }),
      // dayOverlayColor: MaterialStatePropertyAll(primary.withOpacity(0.3)),
      dayOverlayColor:
          WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return blueDark.withOpacity(0.04);
        }

        if (states.contains(WidgetState.pressed)) {
          return primary.withOpacity(0.2);
        }

        if (states.contains(WidgetState.error)) {
          return Colors.red.shade700;
        }

        return Colors.transparent;
      }),
      todayBorder: const BorderSide(width: 2, color: primary),
      // dayForegroundColor: const MaterialStatePropertyAll(blueDark),
      dayForegroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return blueDark.withOpacity(0.4);
        }
        if (states.contains(WidgetState.selected)) {
          return Colors.white;
        }

        if (states.contains(WidgetState.error)) {
          return Colors.red.shade700;
        }

        return blueDark;
      }),

      dividerColor: primary,
      headerBackgroundColor: primary,
      headerForegroundColor: Colors.white,
    ),

    textButtonTheme: textButtonThemeData(),
    elevatedButtonTheme: elevatedButtonThemeData(),
    outlinedButtonTheme: outlinedButtonThemeData(),
    inputDecorationTheme: inputDecorationTheme(),

    indicatorColor: primary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: primary),
  );
}

SwitchThemeData switchTheme() {
  return SwitchThemeData(
    trackColor:
        WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return blueDark.withOpacity(0.04);
      }
      if (states.contains(WidgetState.selected)) {
        return primary.withOpacity(0.04);
      }
      if (states.contains(WidgetState.error)) {
        return Colors.red.shade700;
      }

      return primary.withOpacity(0.02);
    }),
    // trackColor: MaterialStatePropertyAll(primary.withOpacity(0.04)),
    // thumbColor: MaterialStatePropertyAll(primary.withOpacity(0.8)),
    thumbColor:
        WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return blueDark.withOpacity(0.3);
      }
      if (states.contains(WidgetState.selected)) {
        return primary;
      }
      if (states.contains(WidgetState.error)) {
        return Colors.red.shade700;
      }

      return blueDark.withOpacity(0.4);
    }),
    trackOutlineColor:
        WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return blueDark.withOpacity(0.3);
      }
      if (states.contains(WidgetState.selected)) {
        return primary.withOpacity(0.4);
      }
      if (states.contains(WidgetState.error)) {
        return Colors.red.shade700;
      }

      return blueDark.withOpacity(0.4);
    }),
    trackOutlineWidth:
        WidgetStateProperty.resolveWith<double>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return 0.4;
      }
      if (states.contains(WidgetState.selected)) {
        return 2.0;
      }
      if (states.contains(WidgetState.error)) {
        return 1.1;
      }

      return 0.4;
    }),
  );
}

FloatingActionButtonThemeData floatingActionBtn() {
  return const FloatingActionButtonThemeData(
    backgroundColor: Color(0xff4A9E2F),
    splashColor: Colors.transparent,
    focusColor: Colors.transparent,
    hoverColor: Colors.transparent,
    foregroundColor: Colors.white,
    elevation: 5,
    shape: roundedRectangleBorder,
  );
}

BottomNavigationBarThemeData bottomNavigationBar() {
  return const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    elevation: 0,
    backgroundColor: Colors.white,
    enableFeedback: false,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    selectedIconTheme: IconThemeData(
      shadows: [],
      color: primary,
    ),
  );
}

ProgressIndicatorThemeData progressIndicator() {
  return ProgressIndicatorThemeData(
    color: Colors.white,
    linearTrackColor: Colors.white.withOpacity(0.4),
    circularTrackColor: Colors.white.withOpacity(0.4),
    refreshBackgroundColor: Colors.white.withOpacity(0.4),

    // color: Colors.red.withOpacity(0.6),
    // linearTrackColor: Colors.white,
    linearMinHeight: 4.5,
    // refreshBackgroundColor: Colors.white.withOpacity(0.7),
    // circularTrackColor: Colors.white.withOpacity(0.5),
    // linearMinHeight: 50.0,
  );
}

NavigationBarThemeData navigationBar() {
  return NavigationBarThemeData(
    height: 50,
    elevation: 0,
    labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,

    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    indicatorColor: Colors.transparent, // Icon Rounded Color
    indicatorShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(99),
      side: const BorderSide(
        color: Colors.transparent,
        width: 0,
        strokeAlign: 0,
      ),
    ),
    iconTheme: WidgetStatePropertyAll(
      IconThemeData(
        color: Colors.blueGrey.shade200,
        fill: 0,
        grade: 0,
        opacity: 1,
        shadows: const [],
        size: 30,
      ),
    ),
  );
}

CheckboxThemeData checkbox() {
  return CheckboxThemeData(
    checkColor:
        WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return blueDark.withOpacity(0.3);
      }
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      }
      if (states.contains(WidgetState.error)) {
        return Colors.red.shade700;
      }

      return blueDark.withOpacity(0.4);
    }),
    fillColor:
        WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return blueDark.withOpacity(0.3);
      }
      if (states.contains(WidgetState.selected)) {
        return primary;
      }

      if (states.contains(WidgetState.error)) {
        return Colors.red.shade700;
      }

      return blueDark.withOpacity(0.1);
    }),
    overlayColor:
        WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return blueDark.withOpacity(0.3);
      }
      if (states.contains(WidgetState.selected)) {
        return primary.withOpacity(0.4);
      }
      if (states.contains(WidgetState.error)) {
        return Colors.red.shade700;
      }

      return blueDark.withOpacity(0.4);
    }),
    splashRadius: 6.0,
    visualDensity: VisualDensity.standard,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        6.0,
      ),
    ),
  );
}

DialogTheme dialog() {
  return const DialogTheme(
    elevation: 8,
    backgroundColor: Colors.white,
    shape: roundedRectangleBorder,
    // surfaceTintColor: Colors.white,
    alignment: Alignment.center,
    iconColor: primary,

    actionsPadding: EdgeInsets.only(
      top: 10.0,
      right: 10.0,
      bottom: 15.0,
      left: 10.0,
    ),
    titleTextStyle: TextStyle(
      color: blueDark,
      fontSize: 21,
      letterSpacing: 1.0,
      fontWeight: FontWeight.w600,
      wordSpacing: 1,
    ),
  );
}

DrawerThemeData drawer() {
  return DrawerThemeData(
    backgroundColor: Colors.white,
    elevation: 20,
    // shape: roundedRectangleBorder,
    endShape: roundedRectangleBorder,
    shadowColor: blueDark.withOpacity(0.1),
    // background Color
    surfaceTintColor: Colors.white,
    // the color of drawer behind the background
    scrimColor: primary.withOpacity(0.02),
    shape: roundedRectangleBorder,
  );
}

CardTheme cardsTheme() {
  return CardTheme(
    color: Colors.white,
    elevation: 5,
    margin: const EdgeInsets.only(
      left: 5.0,
      right: 5.0,
    ),
    shadowColor: blueDark.withOpacity(0.1),
    shape: roundedRectangleBorder,
  );
}

ColorScheme colorsScheme() {
  return ColorScheme.fromSwatch(
    brightness: Brightness.light,
    accentColor: Colors.red,
    backgroundColor: blueDark,
    // primaryColorDark: blueDark,

    errorColor: Colors.red[800],
    primarySwatch: materialColorMain, // this is effecting he Stepper Circle
  );
}

// AppBar Style
AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: true,
    color: Colors.white,
    elevation: 8,

    // the app bar is Color when the app bar is scrolled
    // scrolledUnderElevation: 10,
    scrolledUnderElevation: 0,

    // it's app bar Color when it's scrolled Color
    surfaceTintColor: Colors.white,

    shadowColor: blueDark.withOpacity(0.1),
    iconTheme: const IconThemeData(
      color: primary,
      // color: blueDark,
    ),
    titleTextStyle: const TextStyle(
      fontFamily: appPrimaryFontFamily,
      fontWeight: FontWeight.w500,
      color: blueDark,
      fontSize: 24.0,
      letterSpacing: 1,
      wordSpacing: 0.5,
    ),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    displayLarge: TextStyle(
      fontFamily: appPrimaryFontFamily,
      color: blueDark,
      fontSize: 57.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
    displayMedium: TextStyle(
      fontFamily: appPrimaryFontFamily,
      color: blueDark,
      fontSize: 45.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
    displaySmall: TextStyle(
      fontFamily: appPrimaryFontFamily,
      fontSize: 36.0,
      color: blueDark,
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: TextStyle(
      fontFamily: appPrimaryFontFamily,
      fontSize: 32.0,
      color: blueDark,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: TextStyle(
      fontFamily: appPrimaryFontFamily,
      fontSize: 28.0,
      color: blueDark,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      fontFamily: appPrimaryFontFamily,
      fontSize: 24.0,
      color: blueDark,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: TextStyle(
      fontFamily: appPrimaryFontFamily,
      fontSize: 22.0,
      color: blueDark,
      fontWeight: FontWeight.w400,
      // height: 28,
    ),
    titleMedium: TextStyle(
      fontFamily: appPrimaryFontFamily,
      color: blueDark,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      // height: 24,
    ),
    titleSmall: TextStyle(
      fontFamily: appPrimaryFontFamily,
      color: blueDark,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    labelLarge: TextStyle(
      fontFamily: appPrimaryFontFamily,
      fontSize: 14,
      color: blueDark,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    labelMedium: TextStyle(
      fontFamily: appPrimaryFontFamily,
      fontSize: 12.0,
      color: blueDark,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    labelSmall: TextStyle(
      fontFamily: appPrimaryFontFamily,
      fontSize: 11.0,
      color: blueDark,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    bodyLarge: TextStyle(
      fontFamily: appPrimaryFontFamily,
      fontSize: 16.0,
      color: blueDark,
      fontWeight: FontWeight.w400,
      wordSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontFamily: appPrimaryFontFamily,
      fontSize: 14.0,
      color: blueDark,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      fontFamily: appPrimaryFontFamily,
      fontSize: 12.0,
      color: blueDark,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
  );
}

// Text Input Felid Styles | Styles in one Time
// form felid input decoration for all the theme app is used
InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
    gapPadding: 10,
    borderSide: BorderSide(
      color: Colors.transparent,
      width: 0,
    ),
    borderRadius: inputBorderRadius,
  );

  OutlineInputBorder focusedInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: primary,
      width: 2.5,
    ),
    borderRadius: inputBorderRadius,
  );

  OutlineInputBorder errorInputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red.shade200,
      width: 1.5,
    ),
    borderRadius: inputBorderRadius,
  );

  OutlineInputBorder focusedErrorInputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red.shade500,
      width: 2.5,
    ),
    borderRadius: inputBorderRadius,
  );

  TextStyle errorInputStyle = TextStyle(
    fontFamily: appPrimaryFontFamily,
    color: Colors.red[800],
    fontSize: 13,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );

  TextStyle labelInputStyle = const TextStyle(
    fontFamily: appPrimaryFontFamily,
    color: blueDark,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 1.0,
  );

  TextStyle hintInputStyle = const TextStyle(
    fontFamily: appPrimaryFontFamily,
    color: blueDark,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 1.0,
  );

  // Field Background Color
  Color fillInputColor = fieldColor;

  return InputDecorationTheme(
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    // contentPadding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
    contentPadding: inputContentPadding,
    isDense: true,
    enabledBorder: outlineInputBorder,
    focusedBorder: focusedInputBorder,
    border: outlineInputBorder,
    errorBorder: errorInputBorder,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    focusedErrorBorder: focusedErrorInputBorder,
    // labelStyle: labelInputStyle,
    labelStyle: textTheme().titleMedium,
    hintStyle: hintInputStyle,
    errorStyle: errorInputStyle,
    errorMaxLines: 2,
    suffixIconColor: iconsColor,
    prefixIconColor: iconsColor,
    iconColor: iconsColor,

    filled: true,
    fillColor: fillInputColor,
  );
}

// The inputs styles
TextStyle inputStyle = const TextStyle(
  fontFamily: appPrimaryFontFamily,
  fontSize: 14,
  fontWeight: FontWeight.normal,
  color: blueDark,
  letterSpacing: 1.2,
);
// The dynamic styles

// Buttons
ButtonThemeData buttonThemeData() {
  return ButtonThemeData(
    buttonColor: blueDark,
    textTheme: ButtonTextTheme.accent,
    padding: const EdgeInsets.all(10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
}

OutlinedButtonThemeData outlinedButtonThemeData() {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 5,
      textStyle: const TextTheme().titleLarge,
      shadowColor: blueDark.withOpacity(0.1),
      backgroundColor: Colors.white,
      side: const BorderSide(
        width: 3,
        color: blueDark,
      ),
      padding: const EdgeInsets.all(10),
      maximumSize: const Size(double.infinity, 55),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}

ElevatedButtonThemeData elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 5,
      textStyle: const TextTheme().labelLarge?.copyWith(
            color: Colors.white,
          ),
      shadowColor: blueDark.withOpacity(0.1),
      backgroundColor: materialColorMain,
      padding: const EdgeInsets.all(10),
      maximumSize: const Size(double.infinity, 55),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}

TextButtonThemeData textButtonThemeData() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: primary,
      elevation: 8,
      textStyle: const TextTheme().titleLarge?.copyWith(
            color: Colors.white,
          ),
      shadowColor: blueDark.withOpacity(0.1),
      backgroundColor: Colors.white,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(3.0),
      maximumSize: const Size(double.infinity, 55),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}
