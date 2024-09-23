import '../../datatable/datatable_v2.dart';
import 'package:flutter/material.dart';

class AuditReportPage extends StatelessWidget {
  const AuditReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DataTableV2(
        title: 'List of AuditReport',
        titleWidget: ElevatedButton(onPressed: (){},child: Text('ADD'),),
        ontap: (e){
          print(e);
        },
        heads: [
          TableHead(title: 'Divisions', id: 'divisions'),
          TableHead(title: 'Districts', id: 'districts'),
          TableHead(title: 'Status', id: 'status'),
          TableHead(title: 'Regions', id: 'regions'),
          TableHead(title: 'Year', id: 'year'),
          TableHead(title: 'action', id: 'button',isbutton: true,button:
          PopupMenuButton(
            itemBuilder: (c)=>[
              PopupMenuItem(child: Text('edit')),
              PopupMenuItem(child: Text('delete')),
              PopupMenuItem(child: Text('update')),
            ],

          )
          )
        ],
        items: [],
      ),
    );
  }
}