import 'package:flutter/widgets.dart';

/// Adds space on the horizontal corners in the landscape orientation to make the app usable in this orientation.
class FlexibleLayout extends StatelessWidget {
  const FlexibleLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      return Row(
        children: [
          const Spacer(flex: 2),
          Flexible(flex: 3, child: child),
          const Spacer(flex: 2),
        ],
      );
    } else {
      return child;
    }
  }
}
