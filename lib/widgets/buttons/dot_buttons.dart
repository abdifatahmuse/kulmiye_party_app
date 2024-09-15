import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';

dotGradientOutlineButton(
  BuildContext context, {
  required VoidCallback onPressed,
  required String title,
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
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: style,
          ),
        ),
      ),
    ),
  );
}
