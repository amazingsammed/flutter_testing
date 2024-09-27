import 'package:flutter/material.dart';

class DataTableV2 extends StatefulWidget {
  final String title;
  final Function(Map)? ontap;
  final List<TableHead> heads;
  final List items;

  final Widget? titleWidget;

  const DataTableV2(
      {Key? key,
      this.ontap,
      required this.title,
      required this.heads,
      required this.items,
      this.titleWidget})
      : super(key: key);

  @override
  State<DataTableV2> createState() => _DataTableV2State();
}

class _DataTableV2State extends State<DataTableV2> {
  TextEditingController search = TextEditingController();

  List filteredItems = [];

  handleOnChange(String e) {
    setState(() {
      filteredItems = widget.items.where((element) {

        return widget.heads.any((action) {
          return element[action.id]
              .toString()
              .toLowerCase()
              .contains(e.toLowerCase());
        }

        );
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // if (MediaQuery.of(context).size.width < 600 ||
    //     MediaQuery.of(context).size.height < 300) return Container();
    return Scaffold(
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1377,
        ),
        child: Card(
          margin: EdgeInsets.all(40),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          width: 300,
                          child: TextFormField(
                            controller: search,
                            onChanged: handleOnChange,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(),
                                hintText: 'Search',
                                // fillColor: Colors.white,
                                // filled: true,

                                hoverColor: Colors.transparent),
                          ),
                        ),
                      ),
                      Spacer(),
                      widget.titleWidget ?? Container(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            _ItemListHeader(elements: widget.heads),
                            _ItemListBody(
                              head: widget.heads,
                              items: filteredItems.isEmpty
                                  ? widget.items
                                  : filteredItems,
                              ontap: widget.ontap,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ItemListHeader extends StatelessWidget {
  final List<TableHead> elements;

  const _ItemListHeader({Key? key, required this.elements}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(color: Colors.black12),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(6), topLeft: Radius.circular(6))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: elements.map((item) {
          return Expanded(child: Text(item.title));
        }).toList(),
      ),
    );
  }
}

class _ItemListBody extends StatelessWidget {
  final List<TableHead> head;

  final Function(Map)? ontap;
  final List items;

  const _ItemListBody(
      {Key? key, required this.head, required this.items, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: items.isEmpty
            ? Container()
            : ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = items[index];
                  return InkWell(
                    onTap: () => ontap!(item),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        // color: controller.hoverColor.value,
                        border: Border.all(color: Colors.black12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: head.map((element) {
                          if (element.isbutton) {
                            return Expanded(
                              flex: element.size,
                              child: Row(
                                children: [element.button ?? Container()],
                              ),
                            );
                          }
                          return Expanded(flex: element.size,child: Text(item[element.id] ?? ""),);
                        }).toList(),
                      ),
                    ),
                  );
                },
              ));
  }
}

class TableHead {
  String title;
  String id;
  int size;
  bool isbutton;
  Widget? button;

  TableHead(
      {required this.title,
      required this.id,
      this.size = 1,
      this.isbutton = false,
      this.button});
}

extension ABC on List{
  toJsonList(){
    return map((item){
      try{
        return item.toMap();
      }catch(e){
        print('check to toJsonList \n it is returning null');
        return {};
      }

    }).toList();
  }
}
