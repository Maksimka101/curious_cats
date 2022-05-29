import 'package:curious_cats/presentation/design_system/button/kitty_tappable.dart';
import 'package:flutter/material.dart';

class KittyPrimaryButton extends StatelessWidget {
  const KittyPrimaryButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  final VoidCallback onTap;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return KittyTappable(
      onTap: onTap,
      child: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: theme.colorScheme.secondary,
        ),
        alignment: Alignment.center,
        child: DefaultTextStyle(
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: theme.canvasColor,
            fontSize: 16,
            height: 1.2,
          ),
          child: child,
        ),
      ),
    );
  }
}
