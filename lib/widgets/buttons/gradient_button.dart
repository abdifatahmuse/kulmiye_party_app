import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool isLoading;
  final double? height;
  final double? width;
  final TextStyle? style;

  const GradientButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
    required this.title,
    this.height,
    this.width,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onPressed,
      child: Container(
        height: height ?? 60,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(1),
        decoration: const BoxDecoration(
          borderRadius: buttonBorderRadius,
          gradient: gradientColor,
        ),
        child: Container(
          height: height ?? 60,
          width: width ?? double.infinity,
          alignment: Alignment.center,
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  title,
                  textAlign: TextAlign.center,
                  style: style ??
                      Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 22.0,
                            fontFamily: appPrimaryFontFamily,
                            wordSpacing: 1,
                            letterSpacing: 1,
                          ),
                ),
        ),
      ),
    );
  }
}

gradientButton(
  BuildContext context, {
  required VoidCallback onPressed,
  required String title,
  bool isLoading = false,
  double? height,
  double? width,
  style,
}) {
  return ZoomTapAnimation(
    onTap: onPressed,
    child: Container(
      height: height ?? 60,
      width: width ?? double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(1),
      decoration: const BoxDecoration(
        borderRadius: buttonBorderRadius,
        gradient: gradientColor,
      ),
      child: Container(
        height: height ?? 60,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(
                title,
                textAlign: TextAlign.center,
                style: style ??
                    Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 22.0,
                          fontFamily: appPrimaryFontFamily,
                          wordSpacing: 1,
                          letterSpacing: 1,
                        ),
              ),
      ),
    ),
  );
}

gradientOutlineButton(
  BuildContext context, {
  required VoidCallback onPressed,
  required String title,
  bool isLoading = false,
  double? height,
  double? width,
  style,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      height: height ?? 60,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: gradientColor,
      ),
      padding: const EdgeInsets.all(2.5),
      child: Container(
        height: height ?? 60,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19.0),
          color: Colors.white,
        ),
        alignment: Alignment.center,
        child: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect rect) {
            return gradientColor.createShader(rect);
          },
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  title,
                  textAlign: TextAlign.center,
                  style: style,
                ),
        ),
      ),
    ),
  );
}
