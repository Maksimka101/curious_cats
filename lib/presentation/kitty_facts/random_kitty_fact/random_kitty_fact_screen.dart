import 'package:curious_cats/application/kitty_facts/kitty_random_fact_bloc.dart';
import 'package:curious_cats/generated/localization/localization.dart';
import 'package:curious_cats/presentation/design_system/button/kitty_tappable.dart';
import 'package:curious_cats/presentation/design_system/errors/fact_loading_error.dart';
import 'package:curious_cats/presentation/design_system/kitty_app_bar/kitty_app_bar.dart';
import 'package:curious_cats/presentation/design_system/kitty_scaffold/kitty_scaffold.dart';
import 'package:curious_cats/presentation/design_system/layouts/bouncing_view.dart';
import 'package:curious_cats/presentation/kitty_facts/widgets/kitty_fact_card.dart';
import 'package:curious_cats/presentation/loading_screen/loading_logo_animation.dart';
import 'package:curious_cats/utils/service_locator/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fact_loading.dart';

class RandomKittyScreen extends StatefulWidget {
  const RandomKittyScreen({super.key});

  @override
  State<RandomKittyScreen> createState() => _RandomKittyScreenState();
}

class _RandomKittyScreenState extends State<RandomKittyScreen> {
  final KittyRandomFactBloc _kittyRandomFactBloc = locator();

  static const _switchStatesDuration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    final localization = Localization.of(context);

    return KittyScaffold(
      appBar: KittyAppBar(
        title: Text(localization.randomFactScreen),
        actions: [
          KittyTappable(
            onTap: _loadRandomFact,
            child: Tooltip(
              message: localization.refreshFactButton,
              child: const Icon(Icons.refresh),
            ),
          ),
        ],
      ),
      body: BouncingView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: BlocBuilder<KittyRandomFactBloc, KittyRandomFactState>(
              bloc: _kittyRandomFactBloc,
              builder: (context, state) {
                return AnimatedSwitcher(
                  duration: _switchStatesDuration,
                  child: state.when(
                    initial: () {
                      _loadRandomFact();
                      return const _FactLoading();
                    },
                    factLoadingInProgress: _FactLoading.new,
                    failedToLoadFact: () => GenericLoadingError(onReload: _loadRandomFact),
                    factLoaded: (fact) {
                      return KittyFactCard(fact: fact);
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _loadRandomFact() {
    _kittyRandomFactBloc.add(const KittyRandomFactEvent.loadRandomFact());
  }
}
