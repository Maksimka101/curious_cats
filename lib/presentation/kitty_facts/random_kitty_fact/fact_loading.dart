part of 'random_kitty_fact_screen.dart';

class _FactLoading extends StatelessWidget {
  const _FactLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Spacer(),
        LoadingLogoAnimation(),
        Spacer(),
      ],
    );
  }
}
