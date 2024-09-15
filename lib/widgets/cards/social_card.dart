import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';
import 'package:kulmiye/core/cores.dart';

class SocialCard extends StatelessWidget {
  final String? image;
  final String title;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final double? imageHeight;
  final Icon? icon;
  final void Function()? onTap;

  const SocialCard({
    super.key,
    this.image,
    required this.title,
    this.onTap,
    this.padding,
    this.height,
    this.width,
    this.imageHeight,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height ?? context.screenSize.height * .06,
        width: width ?? context.screenSize.width * .9,
        padding: padding ??
            const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              top: 5.0,
              bottom: 5.0,
            ),
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: borderRadiusGeometry,
          border: Border.all(
            color: Theme.of(context).cardTheme.shadowColor!,
            width: 1.2,
            style: BorderStyle.solid,
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Theme.of(context).cardTheme.shadowColor!,
          //     blurRadius: 10,
          //     offset: const Offset(1.0, 1.0),
          //   ),
          // ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            if (image != null && image!.isNotEmpty)
              Image.asset(
                image ?? "",
                height: imageHeight ?? (context.screenSize.height * .04),
              ),
            if (icon != null) icon!,
            SizedBox(
              width: context.screenSize.width * .03,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  // fontWeight: FontWeight.w400,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
