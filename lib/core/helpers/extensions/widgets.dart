import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

extension AnimatedWidgetExtension on Widget {
  /// An extension method to animate a widget with a fade in animation
  ///
  /// Index used as a factor to calculate the delay of each child's animation.
  ///
  /// fadeInList(int index, bool isVertical)
  ///
  fadeInList(int index, bool isVertical) {
    double offset = 50.0;
    return AnimationConfiguration.staggeredList(
      position: index,
      duration: const Duration(milliseconds: 900),
      child: SlideAnimation(
        horizontalOffset: isVertical ? 0.0 : offset,
        verticalOffset: !isVertical ? 0.0 : offset,
        child: FadeInAnimation(
          child: this,
        ),
      ),
    );
  }

  /// An extension method to animate a widget with a fade in animation
  ///
  /// Index used as a factor to calculate the delay of each child's animation.
  ///
  /// fadeInGrid(int index, bool isVertical)
  ///
  fadeInGrid(int index, int columnCount) {
    return AnimationConfiguration.staggeredGrid(
      position: index,
      duration: const Duration(milliseconds: 900),
      columnCount: columnCount,
      child: ScaleAnimation(
        child: FadeInAnimation(
          child: this,
        ),
      ),
    );
  }

  /// An extension method to animate a widget with a slide in animation
  ///
  /// FadeIn in List or single
  fadeIn(int index) {
    return AnimationConfiguration.staggeredList(
      position: index,
      duration: const Duration(milliseconds: 900),
      child: SlideAnimation(
        curve: Curves.easeOut,
        child: FadeInAnimation(
          child: this,
        ),
      ),
    );
  }

  /// An extension method to animate a widget with a slide in animation
  ///
  /// SlideIn in List or single
  slideIn(int index, bool isVertical) {
    double offset = 50.0;
    return AnimationConfiguration.staggeredList(
      position: index,
      duration: const Duration(milliseconds: 900),
      child: SlideAnimation(
        horizontalOffset: isVertical ? 0.0 : offset,
        verticalOffset: !isVertical ? 0.0 : offset,
        child: SlideAnimation(
          child: this,
        ),
      ),
    );
  }

  /// An extension method to animate a widget with a slide in animation
  ///
  /// ScaleIn in List or single
  scaleIn(int index, bool isVertical) {
    double offset = 50.0;
    return AnimationConfiguration.staggeredList(
      position: index,
      duration: const Duration(milliseconds: 900),
      child: SlideAnimation(
        horizontalOffset: isVertical ? 0.0 : offset,
        verticalOffset: !isVertical ? 0.0 : offset,
        child: ScaleAnimation(
          child: this,
        ),
      ),
    );
  }
}
