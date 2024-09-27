import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class KSMItem {
  final bool hasDivider;
  final IconData icon;
  final String title;
  final Function()? ontap;
  final List<KSMItemChild>? body;
  final Widget? content;

  const KSMItem(
      {this.hasDivider = false,
      required this.icon,
      required this.title,
      this.ontap,
      this.body,
      this.content});
}
class KSMItemChild {
  final IconData icon;
  final String title;
  final Function()? ontap;
  final Widget? content;

  const KSMItemChild(
      {
        required this.icon,
        required this.title,
        this.ontap,
        this.content});
}



List<KSMItem> items = [
  KSMItem(
    icon: Icons.dashboard,
    title: 'Dashboard',
  ),
  KSMItem(
    icon: Icons.inventory_2_outlined,
    title: 'All Products',

  ),
    KSMItem(
    icon:  Icons.energy_savings_leaf,
    title: 'All Sales',
    body: [
      KSMItemChild(
        icon: Icons.backpack,
        title: 'Cash Sales',

      ),
      KSMItemChild(
          icon: Icons.category_outlined,
          title: 'Credit Sales',

      ),

      KSMItemChild(
        icon: Icons.person,
        title:'Transfers',

      ),
    ],
  ),
  // KSMitem(icon: CupertinoIcons.tag, title: 'Sales', content: SalesPage()),

  KSMItem(
    icon:  Icons.tag,
    title: 'All Purchases',
    body: [
      KSMItemChild(
          icon: Icons.backpack,
          title: 'Cash Purchases',

      ),
      KSMItemChild(
        icon: Icons.category_outlined,
        title: 'Credit Purchases',

      ),

      KSMItemChild(
        icon: Icons.person,
        title:'Transfers',

      ),
    ],
  ),
  KSMItem(
    hasDivider: true,
    icon:  Icons.replay_circle_filled,
    title: 'References',
    body: [
      KSMItemChild(
        icon: Icons.category,
        title: 'Inventory Categories',

      ),
      KSMItemChild(icon: Icons.balance, title: 'Inventory Units',),

      KSMItemChild(
          icon: Icons.person,
          title: 'Customers',
          ),
    ],
  ),
  KSMItem(
    icon: Icons.report,
    title: 'Report',
  ),




];
List<KSMItem> footer = [
  KSMItem(icon: Icons.settings, title: 'Settings',),
];
