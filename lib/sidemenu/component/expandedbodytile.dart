

import 'package:flutter/material.dart';

import '../models/ksidemenuitem.dart';

class ExpandedBodyTile extends StatelessWidget {
  final List<KSMItem> items ;
  final String isSelected;
  final Color iconColor = Colors.white70;
  final TextStyle textStyle = const TextStyle(color: Colors.white);
  final  Function(KSMItem) changePage;
  final  Function(KSMItemChild) changePage2;
  ExpandedBodyTile({super.key,required this.items,required this.changePage,required this.changePage2,required this.isSelected});


  var selectedColor=Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        ...items.map((e) {
          if (e.body == null && e.hasDivider) {
            return Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.only(
                      left: 10, top: 0, bottom: 0),
                  leading:
                  Icon(e.icon, color: e.title == isSelected?selectedColor:iconColor),
                  title: Text(
                    e.title,
                    style: textStyle,
                  ),
                  onTap: () => changePage(e),
                ),
                Divider(color: iconColor)
              ],
            );
          }
          if (e.body == null) {
            return ListTile(
              contentPadding:
              const EdgeInsets.only(left: 10),
              leading:
              Icon(e.icon, color: e.title == isSelected?selectedColor:iconColor),
              onTap: () => changePage(e),
              title: Text(e.title, style: textStyle),
            );
          }
          if (e.body!.length > 1 && e.hasDivider) {
            return Column(
              children: [
                ExpansionTile(
                  tilePadding: const EdgeInsets.only(
                      left: 10, right: 16),
                  leading:
                  Icon(e.icon, color: iconColor),
                  title: Text(e.title,
                      style:textStyle),
                  textColor: Colors.black,
                  collapsedTextColor: Colors.black,
                  iconColor:iconColor,
                  collapsedIconColor: iconColor,
                  backgroundColor: Colors.transparent,
                  collapsedBackgroundColor:
                  Colors.transparent,
                  shape: const RoundedRectangleBorder(),
                  collapsedShape:
                  const RoundedRectangleBorder(),
                  children: e.body!
                      .map((e) => ListTile(
                    onTap:  changePage2(e),
                    leading: Icon(e.icon,
                        color: e.title == isSelected?selectedColor:iconColor),
                    title: Text(e.title,
                        style: textStyle),
                  ))
                      .toList(),
                ),
                Divider(
                  color: iconColor,
                )
              ],
            );
          }
          //return Text('data');
          return ExpansionTile(
            tilePadding:
            const EdgeInsets.only(left: 10, right: 16),
            leading: Icon(e.icon, color: iconColor),
            title: Text(e.title, style: textStyle),
            textColor: Colors.black,
            collapsedTextColor: Colors.black,
            iconColor: iconColor,
            collapsedIconColor: iconColor,
            backgroundColor: Colors.transparent,
            collapsedBackgroundColor: Colors.transparent,
            shape: const RoundedRectangleBorder(),
            collapsedShape: const RoundedRectangleBorder(),
            children: e.body!
                .map((e) => ListTile(
              onTap: () => changePage2(e),
              leading: Icon(e.icon,
                  color: e.title == isSelected?selectedColor:iconColor),
              title: Text(e.title,
                  style:textStyle),
            ))
                .toList(),
          );
        }).toList(),
      ],
    );
  }
}
