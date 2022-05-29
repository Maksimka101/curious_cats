part of 'kitty_tappable.dart';

/// Widget for Thin (scale) animation.
///
/// If [thinned] is `true` then [child]'s scale is sets to [_thinnedScale] else it sets to 1.
class AnimatedThin extends StatefulWidget {
  const AnimatedThin({
    super.key,
    required this.thinned,
    required this.child,
    this.animationDuration = const Duration(milliseconds: 100),
    this.enabled = true,
  });

  final bool thinned;

  final bool enabled;

  final Widget child;

  final Duration animationDuration;

  @override
  State<AnimatedThin> createState() => _AnimatedThinState();
}

class _AnimatedThinState extends State<AnimatedThin> {
  static const _thinnedScale = 0.93;

  @override
  Widget build(BuildContext context) {
    if (!widget.enabled) {
      return widget.child;
    }

    return AnimatedScale(
      curve: Curves.easeOut,
      scale: widget.thinned ? _thinnedScale : 1,
      duration: widget.animationDuration,
      child: widget.child,
    );
  }
}
