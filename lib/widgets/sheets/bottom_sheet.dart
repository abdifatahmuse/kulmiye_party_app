import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';
import 'package:kulmiye/core/cores.dart';

showBottomModel(
  BuildContext context, {
  required double height,
  required double width,
  required Widget child,
  EdgeInsetsGeometry? padding,
  bool? isDismissible,
  bool? isScrollControlled,
  bool? enableDrag,
  bool? useRootNavigator,
  AlignmentGeometry? alignment,
  Color? color,
}) async {
  return showModalBottomSheet(
    shape: roundedRectangleBorder,
    backgroundColor: Colors.transparent,
    // barrierColor: Colors.blueGrey.withOpacity(0.3),
    isDismissible: isDismissible ?? true,
    isScrollControlled: isScrollControlled ?? true,
    enableDrag: enableDrag ?? true,
    useRootNavigator: useRootNavigator ?? false,
    context: context,
    elevation: 0,
    builder: (context) {
      return Builder(builder: (context) {
        return Container(
          height: height,
          width: width,
          alignment: alignment,
          padding: const EdgeInsets.only(
            left: 12.0,
            right: 12.0,
            top: 10.0,
            bottom: 10.0,
          ),
          margin: const EdgeInsets.all(8.0),
          color: color,
          decoration: BoxDecoration(
            color: context.theme.scaffoldBackgroundColor, // after
            // color: context.theme.cardColor, // before
            // color: Colors.black12.withOpacity(0),
            border: boxBorder(isDark: context.isDark),
            borderRadius: borderRadiusGeometry,
          ),
          child: child,
        );
      });
    },
  );
}
