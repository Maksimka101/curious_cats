import 'package:curious_cats/application/kitty_facts/kitty_facts_cubit.dart';
import 'package:curious_cats/application/kitty_facts/kitty_random_fact_bloc.dart';
import 'package:curious_cats/presentation/home_screen/home_screen.dart';
import 'package:curious_cats/presentation/loading_screen/loading_logo_animation.dart';
import 'package:curious_cats/utils/service_locator/service_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final KittyRandomFactBloc _kittyRandomFactBloc = locator();

  @override
  void initState() {
    super.initState();

    _kittyRandomFactBloc.add(const KittyRandomFactEvent.loadRandomFact());
    locator<KittyHistoryFactsCubit>().loadFactsAndSubscribe();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<KittyRandomFactBloc, KittyRandomFactState>(
          bloc: _kittyRandomFactBloc,
          listener: _listenForKittyFactState,
          builder: (context, state) {
            return state.maybeWhen(
              factLoadingInProgress: LoadingLogoAnimation.new,
              orElse: SizedBox.shrink,
            );
          },
        ),
      ),
    );
  }

  void _listenForKittyFactState(BuildContext context, KittyRandomFactState state) {
    void openHomeScreen(_) {
      Navigator.pushAndRemoveUntil(
        context,
        CupertinoPageRoute(builder: (_) => const HomeScreen()),
        (_) => false,
      );
    }

    state.mapOrNull(
      factLoaded: openHomeScreen,
      failedToLoadFact: openHomeScreen,
    );
  }
}
