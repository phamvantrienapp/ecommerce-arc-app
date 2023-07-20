import 'package:flutter/material.dart';

class CommonScaffold extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;
  final List<Widget>? persistentFooterButtons;

  const CommonScaffold({
    super.key,
    this.appBar,
    required this.child,
    this.backgroundColor,
    this.persistentFooterButtons,
  });

  @override
  Widget build(BuildContext context) {
    Widget body = child;
    if (appBar == null) body = SafeArea(child: child);
    return Scaffold(
      appBar: appBar,
      body: body,
      backgroundColor: backgroundColor,
      persistentFooterButtons: persistentFooterButtons,
    );
  }
}
