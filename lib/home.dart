import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

List<TextEditingController> itemname=[];
List<TextEditingController> qty=[];
List<TextEditingController> rate=[];
createRow(){
  itemname.add(TextEditingController());
  qty.add(TextEditingController());
  rate.add(TextEditingController());
}
removeRow(int i){
  itemname.removeAt(i);
  qty.removeAt(i);
  rate.removeAt(i);
}

@override
  void initState() {
  createRow();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(6),
              color: Colors.black12,
              child: Row(
                children: [
                  Expanded(child: Text("Index"),),
                  SizedBox(width: 10,),
                  Expanded(child: Text('Item Name'),flex: 9,),
                  SizedBox(width: 10,),
                  Expanded(child: Text('Quantity'),flex: 2,),
                  SizedBox(width: 10,),
                  Expanded(child: Text('Rate'),flex: 2,),
                  SizedBox(width: 10,),
                  Expanded(child: Text('Total'),flex: 2,),
                  SizedBox(width: 10,),
                  Expanded(child: Text('Action'),),
                ],
              ),
            ),
            ListView.separated(
              separatorBuilder: (c,i)=>Divider(),
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: itemname.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.all(6),
                  child: Row(
                    children: [
                      Expanded(child: Text((index+1).toString())),
                      SizedBox(width: 9,),
                      Expanded(child: TextFormField(controller: itemname[index],decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name'
                      ),),flex: 10,),
                      SizedBox(width: 10,),
                      Expanded(child: TextField(controller: qty[index],decoration: InputDecoration( border: InputBorder.none,hintText: 'Qty'),),flex: 2, ),
                      SizedBox(width: 10,),
                      Expanded(child: TextField(controller: rate[index],decoration: InputDecoration( border: InputBorder.none,hintText: 'Rate'),onChanged: (e){
                        setState(() {
print(e);
                        });
                      }),flex: 2,),
                      SizedBox(width: 10,),
                      Expanded(child: Text(((double.tryParse(qty[index].text)??1)*(double.tryParse(rate[index].text)??1+0)).toString()),flex: 2,),
                      SizedBox(width: 10,),
                      Expanded(child:itemname.length==1?Container():IconButton(onPressed: (){
                        setState(() {
                          removeRow(index);
                        });

                      },icon: Icon(Icons.delete),)),
                    ],
                  ),
                );
              },
            ),
            ElevatedButton(onPressed: (){

              setState(() {
                createRow();
              });
            }, child: Text("Add More"))

          ],
        ),
      ),
    );
  }
}
