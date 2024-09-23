import 'package:flutter/material.dart';
import 'package:testing/features/matrix/models/matrix_recommendation.dart';
import 'package:testing/features/matrix/pages/functions/list_formatter.dart';

import '../../datatable/datatable_v2.dart';

class MatrixPage extends StatelessWidget {
  const MatrixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DataTableV2(
          title: 'List of Matrix',
          titleWidget: ElevatedButton(
            onPressed: () {},
            child: Text('ADD'),
          ),
          ontap: (e) {
            print(e);
          },
          heads: [
            TableHead(title: 'Matrix', id: 'matrixno', size: 2),
            TableHead(title: 'Auditcode', id: 'auditcode'),
            TableHead(title: 'Districts', id: 'districts'),
            TableHead(title: 'Findings Topic', id: 'findingstopic'),
            // TableHead(title: 'action', id: 'button',isbutton: true,button:
            // PopupMenuButton(
            //   itemBuilder: (c)=>[
            //     PopupMenuItem(child: Text('edit')),
            //     PopupMenuItem(child: Text('delete')),
            //     PopupMenuItem(child: Text('update')),
            //   ],
            //
            // )
            // )
          ],
          items: []
      ),
    );
  }
}


