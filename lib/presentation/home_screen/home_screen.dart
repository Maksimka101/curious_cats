import 'package:curious_cats/generated/localization/localization.dart';
import 'package:curious_cats/presentation/design_system/bottom_navigation_bar/kitty_button_nav_bar.dart';
import 'package:curious_cats/presentation/design_system/kitty_scaffold/kitty_scaffold.dart';
import 'package:curious_cats/presentation/kitty_facts/kitty_facts_history/kitty_facts_history_screen.dart';
import 'package:curious_cats/presentation/kitty_facts/random_kitty_fact/random_kitty_fact_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' hide State;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _tab = 0;

  @override
  Widget build(BuildContext context) {
    final localization = Localization.of(context);

    return KittyScaffold(
      body: Stack(
        children: [
          Offstage(
            offstage: _tab != 0,
            child: CupertinoTabView(
              builder: constF(const RandomKittyScreen()),
            ),
          ),
          Offstage(
            offstage: _tab != 1,
            child: CupertinoTabView(
              builder: constF(KittyFactsHistoryScreen()),
            ),
          ),
        ],
      ),
      bottomNavigationBar: KittyButtonNavBar(
        onTabChanged: _onTabChanged,
        children: [
          Tooltip(
            message: localization.randomFactTab,
            child: const Icon(Icons.catching_pokemon_outlined),
          ),
          Tooltip(
            message: localization.factsHistoryTab,
            child: const Icon(Icons.history_outlined),
          ),
        ],
      ),
    );
  }

  void _onTabChanged(int tab) {
    _tab = tab;
    setState(() {});
  }
}
