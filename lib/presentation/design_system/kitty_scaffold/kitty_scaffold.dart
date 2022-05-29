import 'package:flutter/material.dart';

class KittyScaffold extends StatelessWidget {
  const KittyScaffold({
    super.key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.extendBody = true,
    this.extendAppBar = true,
  });

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;

  final bool extendBody;
  final bool extendAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: extendBody,
      extendBodyBehindAppBar: extendAppBar,
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
