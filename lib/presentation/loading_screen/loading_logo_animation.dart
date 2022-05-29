import 'package:curious_cats/generated/flutter_gen/assets.gen.dart';
import 'package:flutter/material.dart';

class LoadingLogoAnimation extends StatefulWidget {
  const LoadingLogoAnimation({super.key});

  @override
  State<LoadingLogoAnimation> createState() => _LoadingLogoAnimationState();
}

class _LoadingLogoAnimationState extends State<LoadingLogoAnimation> with SingleTickerProviderStateMixin {
  late final AnimationController _scaleAnimation;
  static const _animationDuration = Duration(milliseconds: 1000);

  @override
  void initState() {
    super.initState();

    _scaleAnimation = AnimationController(
      vsync: this,
      lowerBound: 0.8,
      duration: _animationDuration,
    );

    _scaleAnimation.repeat(reverse: true);
  }

  @override
  void dispose() {
    _scaleAnimation.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      child: Assets.images.kittyIcon.image(width: 250),
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: child,
        );
      },
    );
  }
}
