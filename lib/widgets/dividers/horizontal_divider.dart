import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';

class HorizontalDivider extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;

  const HorizontalDivider({
    super.key,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5.0,
        bottom: 5.0,
      ),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final boxWidth = constraints.constrainWidth();

          var dashWidth = width ?? 8.0;
          var dashHeight = height ?? 1.0;

          final dashCount = (boxWidth / (1.5 * dashWidth)).floor();

          return Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: List.generate(
              dashCount,
              (_) {
                return SizedBox(
                  width: dashWidth,
                  height: dashHeight,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: color ?? primary.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
