import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/generated/localization/localization.dart';
import 'package:curious_cats/presentation/design_system/kitty_app_bar/kitty_app_bar.dart';
import 'package:curious_cats/presentation/design_system/kitty_scaffold/kitty_scaffold.dart';
import 'package:curious_cats/presentation/kitty_facts/widgets/kitty_fact_image_card.dart';
import 'package:curious_cats/utils/date_utils/date_formatter.dart';
import 'package:flutter/material.dart';

class KittyFactFullScreenPreview extends StatelessWidget {
  const KittyFactFullScreenPreview({super.key, required this.fact});

  final KittyFact fact;

  @override
  Widget build(BuildContext context) {
    final localization = Localization.of(context);
    final theme = Theme.of(context);

    return KittyScaffold(
      appBar: KittyAppBar(
        title: Text(localization.curiousFact),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            KittyFactImageCard(
              imageUrl: fact.imageUrl,
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fact.text,
                  style: theme.textTheme.headline6,
                ),
                const SizedBox(height: 4),
                Text(
                  defaultDateFormatter.format(fact.createdAt),
                  style: theme.textTheme.caption!.copyWith(
                    color: theme.textTheme.bodyText1!.color,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
