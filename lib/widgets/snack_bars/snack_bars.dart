import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';
import 'package:kulmiye/core/cores.dart';

dynamicColors(ESnackBarStatus type) {
  switch (type) {
    case ESnackBarStatus.success:
      return Colors.green.shade700;
    case ESnackBarStatus.notify:
      return Colors.cyan.shade700;
    case ESnackBarStatus.warning:
      return Colors.amber.shade700;
    case ESnackBarStatus.info:
      return Colors.blue.shade700;
    case ESnackBarStatus.error:
      return Colors.red.shade700;

    default:
      return primary;
  }
}

dynamicColorsShadow(ESnackBarStatus type) {
  switch (type) {
    case ESnackBarStatus.success:
      return Colors.green.shade700.withOpacity(0.1);
    case ESnackBarStatus.notify:
      return Colors.cyan.shade700.withOpacity(0.1);
    case ESnackBarStatus.warning:
      return Colors.amber.shade700.withOpacity(0.08);
    case ESnackBarStatus.info:
      return Colors.blue.shade700.withOpacity(0.1);
    case ESnackBarStatus.error:
      return blueDark.withOpacity(0.2);

    default:
      return primary;
  }
}

SnackBar customSnackBar({
  required BuildContext context,
  String? tag,
  required String title,
  String? description,
  required ESnackBarStatus type,
}) {
  // double height = 0.08;
  // double? height = context.screenSize.height * .08;
  double? height;

  // if (tag != null && tag.isNotEmpty || tag != null && description != null) {
  //   height = context.screenSize.height * 0.08;
  // }
  //  else if (tag != null && tag.isNotEmpty) {
  //   // height = context.screenSize.height * .1;
  // }

  return SnackBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    showCloseIcon: false,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    content: Container(
      width: context.screenSize.width * .87,
      height: height,
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: (tag != null || description != null)
            ? borderRadiusGeometry15
            : borderRadiusGeometry10,
        color: context.theme.cardTheme.color,
        border: Border.all(
          color: dynamicColors(type),
          width: 0.5,
        ),
        boxShadow: [
          BoxShadow(
            color: dynamicColorsShadow(type),
            offset: const Offset(0, 0),
            blurRadius: 15.0,
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: [
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                right: 9.0,
                top: 7.5,
                bottom: 5.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: (tag == null && description == null)
                //     ? MainAxisAlignment.spaceAround
                //     : MainAxisAlignment.spaceBetween,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (tag != null && tag.isNotEmpty)
                    Text(
                      tag,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: context.theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: context.theme.textTheme.bodySmall?.color
                            ?.withOpacity(0.4),
                      ),
                    ),
                  if (tag != null && tag.isNotEmpty)
                    const SizedBox(
                      height: 1,
                    ),
                  Text(
                    title,
                    maxLines: (tag == null && description == null) ? 3 : 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: context.theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (description != null && description.isNotEmpty)
                    const SizedBox(
                      height: 1,
                    ),
                  if (description != null && description.isNotEmpty)
                    Text(
                      description,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: context.theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: context.theme.textTheme.bodySmall?.color
                            ?.withOpacity(0.4),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            // height: (getWidgetSize().height + 0.2),
            height: context.screenSize.height / 8.5,
            width: 13,
            left: -3,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // borderRadius: borderRadiusGeometry,
                // borderRadius: BorderRadius.circular(50.0),
                color: dynamicColors(type),
                boxShadow: [
                  BoxShadow(
                    color: dynamicColorsShadow(type),
                    offset: const Offset(1.0, 1.0),
                    blurRadius: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
