import 'package:curious_cats/application/kitty_facts/kitty_facts_cubit.dart';
import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/generated/localization/localization.dart';
import 'package:curious_cats/presentation/design_system/errors/fact_loading_error.dart';
import 'package:curious_cats/presentation/design_system/kitty_app_bar/kitty_app_bar.dart';
import 'package:curious_cats/presentation/design_system/kitty_scaffold/kitty_scaffold.dart';
import 'package:curious_cats/presentation/design_system/layouts/bouncing_view.dart';
import 'package:curious_cats/presentation/kitty_facts/kitty_fact_full_screen_preview/kitty_fact_full_screen_preview.dart';
import 'package:curious_cats/presentation/kitty_facts/widgets/kitty_fact_history_card.dart';
import 'package:curious_cats/presentation/loading_screen/loading_logo_animation.dart';
import 'package:curious_cats/utils/service_locator/service_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'kitty_facts_history_list.dart';

class KittyFactsHistoryScreen extends StatelessWidget {
  KittyFactsHistoryScreen({super.key});

  final KittyHistoryFactsCubit _historyFactsCubit = locator();

  @override
  Widget build(BuildContext context) {
    final localization = Localization.of(context);

    return KittyScaffold(
      appBar: KittyAppBar(
        title: Text(localization.factsHistoryScreen),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: BlocBuilder<KittyHistoryFactsCubit, KittyHistoryFactsState>(
          bloc: _historyFactsCubit,
          builder: (context, state) {
            return state.when(
              initial: () => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: BouncingView(
                  child: SafeArea(child: LoadingLogoAnimation()),
                ),
              ),
              error: () => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: BouncingView(
                  child: GenericLoadingError(onReload: _onLoadFacts),
                ),
              ),
              loaded: (facts) => _KittyFactsHistoryList(facts: facts),
            );
          },
        ),
      ),
    );
  }

  void _onLoadFacts() {
    _historyFactsCubit.loadFactsAndSubscribe();
  }
}
