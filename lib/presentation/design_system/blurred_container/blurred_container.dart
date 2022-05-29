import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredContainer extends StatelessWidget {
  const BlurredContainer({
    required this.child,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.color,
    super.key,
  });

  final Widget child;
  final BorderRadius borderRadius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 7, sigmaX: 7),
        child: ColoredBox(
          color: color ?? theme.cardColor,
          child: child,
        ),
      ),
    );
  }
}
