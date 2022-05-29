import 'package:curious_cats/presentation/design_system/blurred_container/blurred_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KittyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KittyAppBar({
    super.key,
    required this.title,
    this.actions = const [],
  });

  final Widget title;
  final List<Widget> actions;
  static const _appBarHeight = 54.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const actionTappableArea = 54.0;

    return AppBar(
      title: title,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: Colors.transparent,
      toolbarHeight: _appBarHeight,
      actions: [
        for (final action in actions)
          SizedBox(
            height: actionTappableArea,
            width: actionTappableArea,
            child: IconTheme(
              data: IconThemeData(color: theme.appBarTheme.titleTextStyle?.color),
              child: action,
            ),
          ),
      ],
      flexibleSpace: ClipRect(
        child: BlurredContainer(
          color: theme.appBarTheme.backgroundColor,
          borderRadius: BorderRadius.zero,
          child: const SizedBox.expand(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);
}
