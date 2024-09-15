import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';

class RoundedHorizontalCard extends StatelessWidget {
  final String? title;

  final IconData icon;
  final iconGradientColor;
  final Color backgroundIconColor;
  final VoidCallback onTap;

  const RoundedHorizontalCard({
    super.key,
    this.title,
    required this.icon,
    this.iconGradientColor,
    required this.backgroundIconColor,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        width: size.width,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 15.0),
        decoration: BoxDecoration(
          borderRadius: borderRadiusGeometry,
          // color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //     color: blueDark.withOpacity(0.1),
          //     offset: const Offset(1.0, 1.0),
          //     blurRadius: 8.0,
          //   ),
          // ],
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99.0),
                  color: backgroundIconColor,
                ),
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect rect) =>
                      iconGradientColor.createShader(rect),
                  child: Icon(
                    // CupertinoIcons.briefcase_fill,
                    icon,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Text(
                  title!,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .color!
                            .withOpacity(0.7),
                      ),
                ),
              )
            ]),
      ),
    );
  }
}

class HorizontalCard extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;

  final IconData icon;
  final Color? textColor;
  final bool? mark;
  final Color? markColor;
  final Color? arrowColor;
  final String? secondText;
  final iconGradientColor;
  final VoidCallback onTap;

  const HorizontalCard({
    super.key,
    this.title,
    this.titleStyle,
    required this.icon,
    required this.onTap,
    this.iconGradientColor,
    this.mark,
    this.markColor,
    this.arrowColor,
    this.textColor,
    this.secondText,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: size.width,
        margin: const EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          borderRadius: borderRadiusGeometry,
          // color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //     color: blueDark.withOpacity(0.1),
          //     offset: const Offset(1.0, 1.0),
          //     blurRadius: 8.0,
          //   ),
          // ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect rect) =>
                  iconGradientColor.createShader(rect),
              child: Icon(
                // CupertinoIcons.briefcase_fill,
                icon,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    title!,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: titleStyle ??
                        Theme.of(context).textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: textColor ??
                                  Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .color!
                                      .withOpacity(0.8),
                            ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (secondText != null)
                        Text(
                          "$secondText",
                          maxLines: 1,
                          softWrap: true,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: textColor ??
                                        Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .color!
                                            .withOpacity(0.8),
                                  ),
                        ),
                      const SizedBox(width: 10),
                      Icon(
                        // CupertinoIcons.briefcase_fill,
                        mark == true
                            ? CupertinoIcons.checkmark
                            : mark == false
                                ? CupertinoIcons.chevron_right
                                : null,
                        size: 20,
                        color: mark == true
                            ? markColor
                            : arrowColor ??
                                Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .color!
                                    .withOpacity(0.4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageHorizontalCard extends StatelessWidget {
  final String? title;

  final Color? imageColor;
  final Color? arrowColor;
  final String? image;
  final Color? textColor;
  final Color backgroundIconColor;
  final VoidCallback onTap;

  const ImageHorizontalCard({
    super.key,
    this.title,
    this.imageColor,
    this.arrowColor,
    this.textColor,
    required this.backgroundIconColor,
    this.image,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: size.width,
        margin: const EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          borderRadius: borderRadiusGeometry,
          // color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //     color: blueDark.withOpacity(0.1),
          //     offset: const Offset(1.0, 1.0),
          //     blurRadius: 8.0,
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
                // CupertinoIcons.briefcase_fill,
                image!,
                color: imageColor ??
                    Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .color!
                        .withOpacity(0.4),
                height: 30,
                alignment: Alignment.center,
              ),
            // Icon(
            //   // CupertinoIcons.briefcase_fill,
            //   icon,
            //   size: 30,
            //   color: blueDark.withOpacity(0.4),
            // ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    title!,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: textColor ??
                              Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .color!
                                  .withOpacity(0.8),
                        ),
                  ),
                  Icon(
                    // CupertinoIcons.briefcase_fill,
                    CupertinoIcons.chevron_right,
                    size: 20,
                    color: arrowColor ?? blueDark.withOpacity(0.4),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
