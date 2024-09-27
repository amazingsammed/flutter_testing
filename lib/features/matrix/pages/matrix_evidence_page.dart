import '../../datatable/datatable_v2.dart';
import 'package:flutter/material.dart';

class MatrixEvidencePage extends StatelessWidget {
  const MatrixEvidencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DataTableV2(
        title: 'List of MatrixEvidence',
        titleWidget: ElevatedButton(onPressed: (){},child: Text('ADD'),),
        ontap: (e){
          print(e);
        },
        heads: [
          TableHead(title: 'No', id: 'no'),
          TableHead(title: 'Matrixno', id: 'matrixno'),
          TableHead(title: 'Comment', id: 'comment'),
          TableHead(title: 'Status', id: 'status'),
          TableHead(title: 'action', id: 'button',isbutton: true,button:
          PopupMenuButton(
            itemBuilder: (c)=>[
              PopupMenuItem(child: Text('edit')),
              PopupMenuItem(child: Text('delete')),
              PopupMenuItem(child: Text('update')),
            ],
          ),
          )
        ],
        items: [],
      ),
    );
  }
}