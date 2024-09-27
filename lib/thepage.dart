import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class ThePage extends StatelessWidget {
  const ThePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  NavigationView(
      appBar: NavigationAppBar(automaticallyImplyLeading: false),
      pane: NavigationPane(
        items: [
          PaneItem(icon: Icon(FluentIcons.home), body: Text("sammed"))
        ]
      ),
    );
  }
}
