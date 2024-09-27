

import 'package:flutter/material.dart';

import '../models/ksidemenuitem.dart';

class CompactBodyTile extends StatelessWidget {
  final List<KSMItem> items ;
  final Color iconColor = Colors.white70;
  final TextStyle textStyle = const TextStyle(color: Colors.white);
  final  Function(KSMItem) changePage;
  final  Function(KSMItemChild) changePage2;
   CompactBodyTile({super.key,required this.items,required this.changePage,required this.changePage2,required this.isSelected});

  String isSelected = 'Dashboard';
  var selectedColor=Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...items.map((e) {
          if (e.body == null && e.hasDivider) {
            return Column(
              children: [
                IconButton(
                  icon:
                  Icon(e.icon, color: e.title == isSelected?selectedColor:iconColor),
                  onPressed: () => changePage(e),
                ),
                Divider(
                  color: iconColor,
                )
              ],
            );
          }
          if (e.body == null) {
            return IconButton(
              icon: Icon(e.icon, color: e.title == isSelected?selectedColor:iconColor),
              onPressed: () => changePage(e),
            );
          }
          if (e.body == null && e.hasDivider) {
            return Column(
              children: [
                PopupMenuButton(
                  tooltip: e.title,
                  icon:
                  Icon(e.icon, color: e.title == isSelected?selectedColor:iconColor),
                  itemBuilder: (b) => e.body!
                      .map((x) => PopupMenuItem(
                    child: Text(x.title),
                    onTap: () {
                      changePage2(x);
                    },
                  ))
                      .toList(),
                ),
                Divider(
                  color: iconColor,
                ),
              ],
            );
          }
          //return Text('data');
          return PopupMenuButton(
            tooltip: e.title,
            icon: Icon(e.icon, color: e.title == isSelected?selectedColor:iconColor),
            itemBuilder: (b) => e.body!
                .map((x) => PopupMenuItem(
              child: Text(x.title),
              onTap: () {
                changePage2(x);
              },
            ))
                .toList(),
          );
        }).toList(),
      ],
    );
  }
}
