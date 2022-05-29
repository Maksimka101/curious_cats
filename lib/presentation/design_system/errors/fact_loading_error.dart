import 'package:curious_cats/generated/localization/localization.dart';
import 'package:curious_cats/presentation/design_system/button/kitty_primary_button.dart';
import 'package:flutter/material.dart';

class GenericLoadingError extends StatelessWidget {
  const GenericLoadingError({
    super.key,
    required this.onReload,
  });

  final VoidCallback onReload;

  @override
  Widget build(BuildContext context) {
    final localization = Localization.of(context);
    final theme = Theme.of(context);

    return Column(
      children: [
        const Spacer(),
        Text(
          localization.genericErrorMessage,
          style: theme.textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        KittyPrimaryButton(
          onTap: onReload,
          child: Text(localization.genericRetry),
        ),
        const Spacer(),
      ],
    );
  }
}
