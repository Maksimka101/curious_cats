import 'package:flutter/widgets.dart';
part 'animated_thin.dart';

/// This widget is used to create button with Thin animation.
///
/// Thin animation means that on tap button's it will be a bit minimized.
class KittyTappable extends StatefulWidget {
  const KittyTappable({
    super.key,
    required this.onTap,
    required this.child,
    this.enabled = true,
  });

  final VoidCallback onTap;

  /// Widget which will be animated.
  final Widget child;

  final bool enabled;

  @override
  State<KittyTappable> createState() => _QyreThinTappableState();
}

class _QyreThinTappableState extends State<KittyTappable> {
  var _tapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) => _setTapped(),
      onTapUp: (_) => _onTapUp(),
      onTapCancel: _setUnTapped,
      child: AnimatedThin(
        thinned: _tapped,
        enabled: widget.enabled,
        child: widget.child,
      ),
    );
  }

  void _onTapUp() {
    if (widget.enabled) {
      widget.onTap();
    }

    _setUnTapped();
  }

  void _setUnTapped() {
    setState(() => _tapped = false);
  }

  void _setTapped() {
    if (widget.enabled) {
      setState(() => _tapped = true);
    }
  }
}
