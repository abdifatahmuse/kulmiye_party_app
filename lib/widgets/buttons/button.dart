import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';
import 'package:kulmiye/core/cores.dart';
import 'package:lottie/lottie.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final Function()? onLongTap;
  final String title;
  final bool isLoading;
  final double? height;
  final double? width;
  final TextStyle? style;
  final int? index;

  const CustomButton({
    super.key,
    required this.onTap,
    this.onLongTap,
    required this.title,
    this.isLoading = false,
    this.height,
    this.width,
    this.style,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      onLongTap: onLongTap,
      child: Container(
        height: height ?? 55,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          borderRadius: buttonBorderRadius,
          color: primary,
        ),
        child: Center(
          child: isLoading
              ? Lottie.asset(
                  Assets.animationLoadingBig,
                  // height: 90,
                  // width: 200,
                  decoder: (bytes) {
                    return LottieComposition.decodeZip(bytes,
                        filePicker: (files) {
                      return files.firstWhereOrNull((f) =>
                          f.name.startsWith('animations/') &&
                          f.name.endsWith('.json'));
                    });
                  },
                )
              : Text(
                  title,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                  style: style ??
                      context.theme.textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 22.0,
                        fontFamily: appPrimaryFontFamily,
                        wordSpacing: 1,
                        letterSpacing: 1,
                      ),
                ),
        ),
      ).fadeIn(index ?? 0),
    );
  }
}

class BorderButton extends StatelessWidget {
  const BorderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadiusGeometry,
          border: Border.all(
            color: primary,
            width: 1.8,
            style: BorderStyle.solid,
          ),
        ),
        child: const Text("Buttons"),
      ),
    );
  }
}
