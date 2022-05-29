part of 'kitty_facts_history_screen.dart';

class _KittyFactsHistoryList extends StatefulWidget {
  const _KittyFactsHistoryList({required this.facts});

  final List<KittyFact> facts;

  @override
  State<_KittyFactsHistoryList> createState() => _KittyFactsHistoryListState();
}

class _KittyFactsHistoryListState extends State<_KittyFactsHistoryList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_scrollControllerListener);
  }

  @override
  void dispose() {
    super.dispose();

    _scrollController.removeListener(_scrollControllerListener);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
      itemCount: widget.facts.length,
      separatorBuilder: (_, __) => const Divider(height: 0, indent: 16),
      itemBuilder: (context, i) {
        final fact = widget.facts[i];

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: KittyFactHistoryCard(
            fact: fact,
            onTap: () => _onFactTapped(context, fact),
          ),
        );
      },
    );
  }

  void _scrollControllerListener() {
    final position = _scrollController.position;
    if (position.extentAfter < 100 && position.userScrollDirection == ScrollDirection.reverse) {
      _onLoadMoreFacts();
    }
  }

  void _onLoadMoreFacts() {
    locator<KittyHistoryFactsCubit>().loadMoreFacts();
  }

  void _onFactTapped(BuildContext context, KittyFact fact) {
    Navigator.of(context, rootNavigator: true).push(
      CupertinoPageRoute(
        builder: (_) => KittyFactFullScreenPreview(fact: fact),
      ),
    );
  }
}
