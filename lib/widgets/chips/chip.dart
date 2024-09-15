import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';
import 'package:kulmiye/core/cores.dart';

class Chips extends StatelessWidget {
  final String title;
  final bool isSelected;
  final EdgeInsetsGeometry? margin;

  const Chips({
    super.key,
    required this.title,
    required this.isSelected,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 4,
        bottom: 8,
      ),
      margin: margin ??
          const EdgeInsets.only(
            top: 15,
            bottom: 15,
            right: 10,
          ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99),
        color: isSelected ? primary : Colors.transparent,
        border:
            !isSelected ? boxBorder(isDark: context.isDark) : const Border(),
      ),
      // height: 40,
      child: Text(
        // 'Hight',
        // 'Progress',
        title,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: isSelected ? Colors.white : primary,
              fontWeight: FontWeight.w400,
              // color: Theme.of(context)
              //     .textTheme
              //     .titleMedium!
              //     .color!
              //     .withOpacity(0.4),
            ),
      ),
    );
  }
}
