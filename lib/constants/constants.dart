import 'package:flutter/material.dart';

export 'assets.dart';
export 'theme.dart';

/**
 * App Theme Helpers
 * 
 * Colors and Gradient Colors, 
 * Font, Material Colors app
 * 
 * Theme input styles and Radius or rounded Numbers 
 */ ///

const String imagesPath = "https://registration.dahabpay.com/";

const String apiUrl = "https://registration.dahabpay.com/";

// Colors & Gradient Colors, Material Colors etc...
// const primary = Color(0xffF107A6);
const primary = Color(0xff4C9D2F);

const primaryDark = Color(0xFF021116);

const secondary = Color(0xff4C9D2F);

final fieldColor = primary.withOpacity(0.1);

const elevationColor = Color(0xff061A23);

const blueDark = Color(0xff061A23);

const iconsColor = primary;
const iconsColorDark = primary;

const dark = Color(0xff061A23);

// Replace Your Font
const String appPrimaryFontFamily = "PlusJakartaSans";

// Rename the
const MaterialColor materialColorMain = MaterialColor(
  0xff4C9D2F,
  <int, Color>{
    50: Color(0xffe5e9ef), //10%,
    100: Color(0xffbec7d9), //20%
    200: Color(0xff95a3c0), //30%
    300: Color(0xff6d80a6), //40%
    400: Color(0xff4e6695), //50%
    500: Color(0xff57A0D2), //70%
    600: Color(0xff01796F), //60%
    700: Color(0xFFF3A940), //80%
    800: Color(0xff191E3A), //90%
    900: Color(0xFF000000), //100%
  },
);

// the Radius and Rounded etc.

const BorderRadius inputBorderRadius = BorderRadius.all(Radius.circular(20));

const BorderRadius buttonBorderRadius = BorderRadius.all(Radius.circular(20));

BorderRadiusGeometry borderRadiusGeometry = BorderRadius.circular(20.0);
BorderRadiusGeometry borderRadiusGeometry15 = BorderRadius.circular(15.0);
BorderRadiusGeometry borderRadiusGeometry10 = BorderRadius.circular(10.0);

Radius radiusGeometry = const Radius.circular(20.0);
Radius radiusGeometry15 = const Radius.circular(15.0);
Radius radiusGeometry10 = const Radius.circular(10.0);

BorderRadiusGeometry borderRadiusGeometryWithIcon = BorderRadius.circular(15.0);

BorderRadiusGeometry borderRadiusGeometryWithInsideIcon =
    BorderRadius.circular(10.0);

BoxBorder boxBorder({bool isDark = false, double? width, Color? color}) =>
    Border.all(
      width: width ?? 2,
      color: color ??
          (isDark ? primaryDark.withOpacity(0.1) : primary.withOpacity(0.2)),
      style: BorderStyle.solid,
    );

const RoundedRectangleBorder roundedRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(20),
  ),
);

const EdgeInsets inputContentPadding = EdgeInsets.only(
  left: 15,
  right: 10,
  bottom: 19,
  top: 19,
);

const double inputBorderWidth = 1.5;

const double inputBorderWidthError = 2.5;

const double inputGapPadding = 10;

const double elevation = 8;

// gradient
const gradientColor = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    primary,
    primary,
    secondary,
  ],
);
const gradientColorV2 = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    primary,
    primary,
    secondary,
  ],
);

var shimmerGradient = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    // const Color(0xFFFFFFFF),
    secondary.withOpacity(0.2),
    primary.withOpacity(0.3),
  ],
);

const gradientColorGreenLight = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xffD9EEDB),
    Color(0xff181818),
  ],
);

const gradientColorMoonlitAsteroid = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xff0F2027),
    Color(0xff203A43),
    Color(0xff2C5364),
  ],
);

const gradientColorYellow = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xffF1A534),
    Color(0xffFFC637),
  ],
);

/// Blue dark and blue light Gradient
const gradientColorBlueDarkWithLight = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xff19335A),
    Color(0xff8FC8EB),
  ],
);

const gradientColorBlack = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xff1F1C18),
    Color(0xff8E0E00),
  ],
);

const gradientColorPinotNoir = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xff182848),
    Color(0xff4b6cb7),
  ],
);

const gradientColorTwitch = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xff2a0845),
    Color(0xff6441A5),
  ],
);

const gradientColorBehongo = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xff061700),
    Color(0xff52c234),
  ],
);

/// Dark Gradient with Green
const gradientColorTerminal = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xff000000),
    Color(0xff0f9b0f),
  ],
);

/// Gradient with
/// Example :
/// ```dart
/// Color(0xff000000),
/// Color(0xff0f9b0f),
/// ```
const gradientColorRoyal = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xff141E30),
    Color(0xff243B55),
  ],
);

/// purple with Blue Gradient
const gradientColorAmin = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xff8E2DE2),
    Color(0xff4A00E0),
  ],
);
