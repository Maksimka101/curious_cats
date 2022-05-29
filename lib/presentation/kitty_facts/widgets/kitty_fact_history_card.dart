import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/presentation/design_system/button/kitty_tappable.dart';
import 'package:curious_cats/utils/date_utils/date_formatter.dart';
import 'package:flutter/material.dart';

class KittyFactHistoryCard extends StatelessWidget {
  const KittyFactHistoryCard({super.key, required this.fact, required this.onTap});

  final KittyFact fact;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return KittyTappable(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fact.text,
                  style: theme.textTheme.bodyText1,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
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
          ),
          const SizedBox(width: 16),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 16,
          ),
        ],
      ),
    );
  }
}
