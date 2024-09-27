import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class Sidemenuk extends StatelessWidget {
  const Sidemenuk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SidebarX(
            theme: SidebarXTheme(

            ),
            extendedTheme: SidebarXTheme(width: 320),
            controller: SidebarXController(selectedIndex: 0),
            items: const [
              SidebarXItem(icon: Icons.home, label: 'Home'),
              SidebarXItem(icon: Icons.home, label: 'Home'),
              SidebarXItem(icon: Icons.home, label: 'Home'),
            ],
          )
        ],
      ),
    );
  }
}
