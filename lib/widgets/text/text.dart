import 'package:flutter/material.dart';
import 'package:kulmiye/core/cores.dart';

Widget textTopZero(
  BuildContext context, {
  required String text,
  int? maxLines,
  bool? softWrap,
  TextOverflow? overflow,
  TextStyle? style,
  Color? color,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  TextDecoration? decoration,
}) =>
    Padding(
      padding: const EdgeInsets.only(
        left: 0.0,
        right: 0.0,
        top: 0.0,
        bottom: 8.0,
      ),
      child: Text(
        text,
        maxLines: maxLines ?? 1,
        softWrap: softWrap ?? true,
        overflow: overflow ?? TextOverflow.ellipsis,
        textAlign: textAlign,
        style: style ??
            Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: fontWeight ?? FontWeight.w400,
                  color:
                      color ?? Theme.of(context).textTheme.titleMedium!.color,
                  decoration: decoration,
                ),
      ),
    );

Widget textPaddingAll(
  BuildContext context, {
  required String text,
  int? maxLines,
  bool? softWrap,
  TextOverflow? overflow,
  TextStyle? style,
  Color? color,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  TextDecoration? decoration,
}) =>
    Padding(
      padding: const EdgeInsets.only(
        left: 0.0,
        right: 0.0,
        top: 10.0,
        bottom: 8.0,
      ),
      child: Text(
        text,
        maxLines: maxLines ?? 1,
        softWrap: softWrap ?? true,
        overflow: overflow ?? TextOverflow.ellipsis,
        textAlign: textAlign,
        style: style ??
            Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: fontWeight ?? FontWeight.w400,
                  color:
                      color ?? Theme.of(context).textTheme.titleMedium!.color!,
                  decoration: decoration,
                ),
      ),
    );

class AnimatedText extends StatelessWidget {
  final String text;
  final int? maxLines;
  final bool? softWrap;
  final TextOverflow? overflow;
  final TextStyle? style;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final Color? selectionColor;
  final TextDirection? textDirection;
  final TextWidthBasis? textWidthBasis;
  final TextScaler? textScaler;
  final int? index;

  const AnimatedText(
    this.text, {
    super.key,
    this.maxLines,
    this.softWrap,
    this.overflow,
    this.style,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.decoration,
    this.padding,
    this.selectionColor,
    this.textDirection,
    this.textWidthBasis,
    this.textScaler,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Text(
          text,
          textAlign: textAlign,
          maxLines: maxLines ?? 1,
          softWrap: softWrap ?? true,
          textScaler: textScaler,
          textDirection: textDirection,
          textWidthBasis: textWidthBasis,
          selectionColor: selectionColor,
          overflow: overflow ?? TextOverflow.ellipsis,
          style: style ??
              context.theme.textTheme.titleMedium!.copyWith(
                fontWeight: fontWeight ?? FontWeight.w400,
                color: color ?? context.theme.textTheme.titleMedium!.color!,
                decoration: decoration,
              ),
        ),
      ),
    ).fadeIn(index ?? 0);
  }
}
