class MatrixRecommendation{
  String no;
  String auditcode;
  String matrixno;
  String soi;
  String atORpbt;
  String responsibleofficer;
  String evidence;
  String targetdate;
  String comment;
  String createdby;
  DateTime createddate;
  String modifiedby;
  DateTime modifieddate;

//<editor-fold desc="Data Methods">
  MatrixRecommendation({
    required this.no,
    required this.auditcode,
    required this.matrixno,
    required this.soi,
    required this.atORpbt,
    required this.responsibleofficer,
    required this.evidence,
    required this.targetdate,
    required this.comment,
    required this.createdby,
    required this.createddate,
    required this.modifiedby,
    required this.modifieddate,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MatrixRecommendation &&
          runtimeType == other.runtimeType &&
          no == other.no &&
          auditcode == other.auditcode &&
          matrixno == other.matrixno &&
          soi == other.soi &&
          atORpbt == other.atORpbt &&
          responsibleofficer == other.responsibleofficer &&
          evidence == other.evidence &&
          targetdate == other.targetdate &&
          comment == other.comment &&
          createdby == other.createdby &&
          createddate == other.createddate &&
          modifiedby == other.modifiedby &&
          modifieddate == other.modifieddate);

  @override
  int get hashCode =>
      no.hashCode ^
      auditcode.hashCode ^
      matrixno.hashCode ^
      soi.hashCode ^
      atORpbt.hashCode ^
      responsibleofficer.hashCode ^
      evidence.hashCode ^
      targetdate.hashCode ^
      comment.hashCode ^
      createdby.hashCode ^
      createddate.hashCode ^
      modifiedby.hashCode ^
      modifieddate.hashCode;

  @override
  String toString() {
    return 'MatrixRecommendation{' +
        ' no: $no,' +
        ' auditcode: $auditcode,' +
        ' matrixno: $matrixno,' +
        ' soi: $soi,' +
        ' atORpbt: $atORpbt,' +
        ' responsibleofficer: $responsibleofficer,' +
        ' evidence: $evidence,' +
        ' targetdate: $targetdate,' +
        ' comment: $comment,' +
        ' createdby: $createdby,' +
        ' createddate: $createddate,' +
        ' modifiedby: $modifiedby,' +
        ' modifieddate: $modifieddate,' +
        '}';
  }

  MatrixRecommendation copyWith({
    String? no,
    String? auditcode,
    String? matrixno,
    String? soi,
    String? atORpbt,
    String? responsibleofficer,
    String? evidence,
    String? targetdate,
    String? comment,
    String? createdby,
    DateTime? createddate,
    String? modifiedby,
    DateTime? modifieddate,
  }) {
    return MatrixRecommendation(
      no: no ?? this.no,
      auditcode: auditcode ?? this.auditcode,
      matrixno: matrixno ?? this.matrixno,
      soi: soi ?? this.soi,
      atORpbt: atORpbt ?? this.atORpbt,
      responsibleofficer: responsibleofficer ?? this.responsibleofficer,
      evidence: evidence ?? this.evidence,
      targetdate: targetdate ?? this.targetdate,
      comment: comment ?? this.comment,
      createdby: createdby ?? this.createdby,
      createddate: createddate ?? this.createddate,
      modifiedby: modifiedby ?? this.modifiedby,
      modifieddate: modifieddate ?? this.modifieddate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'no': this.no,
      'auditcode': this.auditcode,
      'matrixno': this.matrixno,
      'soi': this.soi,
      'atORpbt': this.atORpbt,
      'responsibleofficer': this.responsibleofficer,
      'evidence': this.evidence,
      'targetdate': this.targetdate,
      'comment': this.comment,
      'createdby': this.createdby,
      'createddate': this.createddate,
      'modifiedby': this.modifiedby,
      'modifieddate': this.modifieddate,
    };
  }

  factory MatrixRecommendation.fromMap(Map<String, dynamic> map) {
    return MatrixRecommendation(
      no: map['no'] as String,
      auditcode: map['auditcode'] as String,
      matrixno: map['matrixno'] as String,
      soi: map['soi'] as String,
      atORpbt: map['atORpbt'] as String,
      responsibleofficer: map['responsibleofficer'] as String,
      evidence: map['evidence'] as String,
      targetdate: map['targetdate'] as String,
      comment: map['comment'] as String,
      createdby: map['createdby'] as String,
      createddate: map['createddate'] as DateTime,
      modifiedby: map['modifiedby'] as String,
      modifieddate: map['modifieddate'] as DateTime,
    );
  }

//</editor-fold>
}