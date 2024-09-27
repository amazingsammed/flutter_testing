import 'package:flutter/material.dart';
import 'package:testing/sidemenu/component/expandedbodytile.dart';


import 'component/compactbodytile.dart';
import 'models/ksidemenuitem.dart';

class SideMenu extends StatefulWidget {
  final Color backgroundColor;
  final Color iconColor;
  final TextStyle textStyle;
  final List<KSMItem> footer;
  final List<KSMItem> body;
  final String title;
  final Widget? intialPage;

  @override
  State<SideMenu> createState() => _SideMenuState();

   const SideMenu({
  super.key,
  this.backgroundColor = const Color(0xFF100D28),
  this.iconColor = Colors.white70,
  this.textStyle = const TextStyle(color: Colors.white),
   required this.footer,
  required this.body,
  this.intialPage,
  this.title = "MyStoreKeeper",
});
}

class _SideMenuState extends State<SideMenu>
    with SingleTickerProviderStateMixin {
  var width = 200.0;
  bool isOpened = true;
  String isSelected = 'Dashboard';
  var selectedColor=Colors.blue;
  bool isDone = true;
  late Widget content ;

  @override
  void initState() {
    content = widget.intialPage ??Container(
      color: Colors.white,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1000) {
      setState(() {
        width = 50;
        isDone = false;
        isOpened = false;
      });
    }
    void changePage(KSMItem item) {
      if (item.content == null) return;

      setState(() {
        isSelected=item.title;
        content = item.content!;
      });
      print(isSelected);
    }
    void changePage2(KSMItemChild item) {
      if (item.content == null) return;

      setState(() {
        isSelected=item.title;
        content = item.content!;
      });
      print(isSelected);
    }

    return Scaffold(
      body: Column(
        children: [
          // MyAppBar(),

          Expanded(
            child: Row(
              children: [
                AnimatedContainer(
                  onEnd: () {
                    setState(() {
                      if (isOpened) isDone = true;
                    });
                  },
                  decoration: BoxDecoration(
                      color: widget.backgroundColor,
                      // gradient: LinearGradient(
                      //     begin: Alignment.centerLeft,
                      //     end: Alignment.centerRight,
                      //     colors: [
                      //       widget.backgroundColor,
                      //       Colors.black,
                      //     ]),
                      borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(12))),
                  width: width,
                  duration: const Duration(milliseconds: 200),
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 55,
                            color: Color(0xff224462),
                            child: Row(
                              mainAxisAlignment: !isOpened
                                  ? MainAxisAlignment.center
                                  : MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () => changeMenu(),
                                    icon: Icon(
                                      Icons.menu,
                                      color: widget.iconColor,
                                    )),
                                if (isDone)
                                  SizedBox(
                                    width: 10,
                                  ),
                                if (isDone)
                                  Text(
                                    widget.title,
                                    style: widget.textStyle.copyWith(fontSize: 20),
                                  )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ListView(
                              children: [
                                if (isDone)
                                 ExpandedBodyTile(items: items,isSelected: isSelected, changePage: changePage, changePage2: changePage2,),
                                if (!isOpened)
                                 CompactBodyTile(items: items,isSelected: isSelected, changePage: changePage, changePage2: changePage2,),
                              ],
                            ),
                          ),
                          if (isDone)
                            ...footer.map((e) {
                              if (e.body == null) {
                                return ListTile(
                                  contentPadding: const EdgeInsets.only(left: 10),
                                  leading: Icon(e.icon, color: e.title == isSelected?selectedColor:widget.iconColor),
                                  title: Text(e.title, style: widget.textStyle),
                                  onTap: () => changePage(e),
                                );
                              }
                              //return Text('data');
                              return ExpansionTile(
                                tilePadding:
                                const EdgeInsets.only(left: 10, right: 16),
                                leading: Icon(e.icon, color: widget.iconColor),
                                title: Text(e.title, style: widget.textStyle),
                                textColor: Colors.black,
                                collapsedTextColor: Colors.black,
                                iconColor: widget.iconColor,
                                collapsedIconColor: widget.iconColor,
                                backgroundColor: Colors.transparent,
                                collapsedBackgroundColor: Colors.transparent,
                                shape: const RoundedRectangleBorder(),
                                collapsedShape: const RoundedRectangleBorder(),
                                children: e.body!
                                    .map((e) => ListTile(
                                  onTap: () => changePage2(e),
                                  leading:
                                  Icon(e.icon, color: e.title == isSelected?selectedColor:widget.iconColor),
                                  title:
                                  Text(e.title, style: widget.textStyle),
                                ))
                                    .toList(),
                              );
                            }).toList(),
                          if (!isOpened)
                            ...footer.map((e) {
                              if (e.body == null) {
                                return IconButton(
                                  icon: Icon(e.icon, color: e.title == isSelected?selectedColor:widget.iconColor),
                                  onPressed: () => changePage(e),
                                );
                              }
                              return PopupMenuButton(
                                icon: Icon(e.icon, color: e.title == isSelected?selectedColor:widget.iconColor),
                                itemBuilder: (b) => e.body!
                                    .map((x) => PopupMenuItem(
                                  child: Text(x.title),
                                  onTap: () => changePage2(x),
                                ))
                                    .toList(),
                              );
                            }).toList(),
                        ],
                      );
                    },
                  ),
                ),
                Expanded(
                    child: content)
              ],
            ),
          ),
        ],
      ),
    );
  }

  changeMenu() {
    setState(() {
      if (isOpened) isDone = false;
      isOpened = !isOpened;
      width = !isOpened ? 50 : 300;
    });
  }
}


