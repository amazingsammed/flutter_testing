
import 'package:testing/features/matrix/pages/functions/list_formatter.dart';

import '../../datatable/datatable_v2.dart';
import 'package:flutter/material.dart';

import '../models/matrix_recommendation.dart';

class MatrixRecommendationPage extends StatelessWidget {
  const MatrixRecommendationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DataTableV2(
        title: 'List of MatrixRecommendation',
        titleWidget: ElevatedButton(onPressed: (){},child: Text('ADD'),),
        ontap: (e){
          print(e);
        },
        heads: [
          TableHead(title: 'Date', id: 'targetdate'),
          TableHead(title: 'Auditcode', id: 'auditcode'),
          TableHead(title: 'Matrix', id: 'matrixno'),
          TableHead(title: 'Responsible Officer', id: 'responsibleofficer'),
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
        items: itemlist.toJsonList(),
      ),
    );
  }
}

List<MatrixRecommendation> itemlist = [
  MatrixRecommendation(
      no: 'no',
      auditcode: 'auditcode',
      matrixno: 'zz',
      soi: 'soi',
      atORpbt: 'atORpbt',
      responsibleofficer: 'responsibleofficer',
      evidence: 'evidence',
      targetdate: 'basit',
      comment: 'comment',
      createdby: 'createdby',
      createddate: DateTime.now(),
      modifiedby: 'modifiedby',
      modifieddate: DateTime.now()),
  MatrixRecommendation(
      no: 'no',
      auditcode: 'sammed',
      matrixno: 'zz',
      soi: 'soi',
      atORpbt: 'atORpbt',
      responsibleofficer: 'responsibleofficer',
      evidence: 'evidence',
      targetdate: 'targetdate',
      comment: 'comment',
      createdby: 'createdby',
      createddate: DateTime.now(),
      modifiedby: 'modifiedby',
      modifieddate: DateTime.now()),
  MatrixRecommendation(
      no: 'no',
      auditcode: 'farouk',
      matrixno: 'gh',
      soi: 'soi',
      atORpbt: 'atORpbt',
      responsibleofficer: 'basit',
      evidence: 'evidence',
      targetdate: '22',
      comment: 'basit',
      createdby: 'createdby',
      createddate: DateTime.now(),
      modifiedby: 'modifiedby',
      modifieddate: DateTime.now()),
  MatrixRecommendation(
      no: 'no',
      auditcode: 'sammed',
      matrixno: 'gh',
      soi: 'soi',
      atORpbt: 'atORpbt',
      responsibleofficer: 'responsibleofficer',
      evidence: 'evidence',
      targetdate: 'targetdate',
      comment: 'comment',
      createdby: 'createdby',
      createddate: DateTime.now(),
      modifiedby: 'modifiedby',
      modifieddate: DateTime.now()),
  MatrixRecommendation(
      no: 'no',
      auditcode: 'farouk',
      matrixno: 'uu',
      soi: 'soi',
      atORpbt: 'atORpbt',
      responsibleofficer: 'basit',
      evidence: 'evidence',
      targetdate: '22',
      comment: 'basit',
      createdby: 'createdby',
      createddate: DateTime.now(),
      modifiedby: 'modifiedby',
      modifieddate: DateTime.now()),
  MatrixRecommendation(
      no: 'no',
      auditcode: 'kumasi',
      matrixno: 'uu',
      soi: 'soi',
      atORpbt: 'atORpbt',
      responsibleofficer: 'adu',
      evidence: 'evidence',
      targetdate: 'targetdate',
      comment: 'comment',
      createdby: 'createdby',
      createddate: DateTime.now(),
      modifiedby: 'modifiedby',
      modifieddate: DateTime.now()),
  MatrixRecommendation(
      no: 'no',
      auditcode: 'china',
      matrixno: 'opt',
      soi: 'soi',
      atORpbt: 'atORpbt',
      responsibleofficer: 'sammed',
      evidence: 'evidence',
      targetdate: '22',
      comment: 'basit',
      createdby: 'createdby',
      createddate: DateTime.now(),
      modifiedby: 'modifiedby',
      modifieddate: DateTime.now()),
];