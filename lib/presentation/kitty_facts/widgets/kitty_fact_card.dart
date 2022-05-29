import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/presentation/kitty_facts/widgets/kitty_fact_image_card.dart';
import 'package:curious_cats/utils/date_utils/date_formatter.dart';
import 'package:flutter/material.dart';

class KittyFactCard extends StatelessWidget {
  const KittyFactCard({
    super.key,
    required this.fact,
  });

  final KittyFact fact;

  @override
  Widget build(BuildContext context) {
    return KittyFactImageCard(
      imageUrl: fact.imageUrl,
      fillImage: true,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: _FactDescription(
          text: fact.text,
          createDate: fact.createdAt,
        ),
      ),
    );
  }
}

class _FactDescription extends StatelessWidget {
  const _FactDescription({
    required this.text,
    required this.createDate,
  });

  final String text;

  final DateTime createDate;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: const [0, 0.8, 0.9, 1],
          colors: [
            Colors.black26,
            Colors.black12,
            Colors.black.withOpacity(0.04),
            Colors.transparent,
          ],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: theme.textTheme.headline4?.copyWith(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            defaultDateFormatter.format(createDate.toLocal()),
            style: theme.textTheme.caption,
          ),
        ],
      ),
    );
  }
}
