import 'package:flutter/widgets.dart';

class BouncingView extends StatelessWidget {
  const BouncingView({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // I want to use scroll view to have cool scroll physics on iOS.
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: SizedBox.fromSize(
            size: constraints.biggest,
            child: child,
          ),
        );
      },
    );
  }
}
