import 'package:curious_cats/presentation/design_system/blurred_container/blurred_container.dart';
import 'package:curious_cats/presentation/design_system/button/kitty_tappable.dart';
import 'package:flutter/material.dart';

class KittyButtonNavBar extends StatefulWidget {
  const KittyButtonNavBar({
    super.key,
    required this.children,
    required this.onTabChanged,
  });

  final List<Widget> children;
  final ValueChanged<int> onTabChanged;

  @override
  State<KittyButtonNavBar> createState() => _KittyButtonNavBarState();
}

class _KittyButtonNavBarState extends State<KittyButtonNavBar> {
  @override
  Widget build(BuildContext context) {
    final children = widget.children;
    final theme = Theme.of(context);

    return BlurredContainer(
      borderRadius: BorderRadius.zero,
      color: theme.bottomNavigationBarTheme.backgroundColor,
      child: SafeArea(
        child: Row(
          children: [
            for (var i = 0; i < children.length; i++)
              Expanded(
                child: SizedBox(
                  height: 56,
                  child: KittyTappable(
                    onTap: () => widget.onTabChanged(i),
                    child: IconTheme(
                      data: const IconThemeData(size: 30),
                      child: children[i],
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
