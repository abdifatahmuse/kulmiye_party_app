import 'package:flutter/material.dart';

SliverAppBar customSliverAppBar({
  required Widget title,
  double? height,
  required Widget child,
  List<Widget>? actions,
  bool? centerTitle,
}) =>
    SliverAppBar(
      pinned: true,
      snap: true,
      floating: true,
      title: title,
      actions: actions,
      flexibleSpace: child,
      centerTitle: centerTitle,
      expandedHeight: height ?? 150.0,
    );
