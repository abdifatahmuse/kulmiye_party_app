import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';
import 'package:kulmiye/core/cores.dart';

/// it's using for the fetch data actions edit, delete, change tasks, etc..
class ListCardOutline extends StatelessWidget {
  final String name;
  final icon;
  final VoidCallback onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;

  const ListCardOutline({
    super.key,
    required this.name,
    required this.icon,
    required this.onTap,
    this.onDoubleTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: borderRadiusGeometryWithIcon,
          border: Border.all(
            width: 2,
            style: BorderStyle.solid,
            color: primary.withOpacity(0.3),
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).cardTheme.shadowColor!,
              offset: const Offset(1.0, 1.0),
              blurRadius: 20.0,
            ),
          ],
        ),
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 10.0,
          bottom: 10.0,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 22,
              color: primary,
            ),
            SizedBox(
              width: context.isSmallScreen ? 5.0 : 10.0,
            ),
            Expanded(
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .color!
                          .withOpacity(0.7),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListCardOutlineWithIcon extends StatelessWidget {
  final String name;

  final icon;
  final VoidCallback onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;

  const ListCardOutlineWithIcon({
    super.key,
    required this.name,
    required this.icon,
    required this.onTap,
    this.onDoubleTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: borderRadiusGeometryWithIcon,
          border: Border.all(
            width: 2,
            style: BorderStyle.solid,
            color: primary.withOpacity(0.3),
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).cardTheme.shadowColor!,
              offset: const Offset(1.0, 1.0),
              blurRadius: 20.0,
            ),
          ],
        ),
        padding: const EdgeInsets.only(
          left: 5.0,
          right: 8.0,
          top: 5.0,
          bottom: 5.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                top: 5,
                bottom: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: borderRadiusGeometryWithInsideIcon,
                color: primary,
                boxShadow: [
                  BoxShadow(
                    // color: Theme.of(context).cardTheme.shadowColor!,
                    color: primary.withOpacity(0.2),
                    offset: const Offset(1.0, 1.0),
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 21,
              ),
            ),
            SizedBox(
              width: context.isSmallScreen ? 5.0 : 10.0,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  name,
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .color!
                            .withOpacity(0.7),
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
