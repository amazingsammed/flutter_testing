
class Matrix{
  String no;
  String auditcode;
  String matrixno;
  String districts;
  String findingstopic;
  String findings;
  String recommendation;
  String createdby;
  DateTime createddate;
  String modifiedby;
  DateTime modifieddate;

//<editor-fold desc="Data Methods">
  Matrix({
    required this.no,
    required this.auditcode,
    required this.matrixno,
    required this.districts,
    required this.findingstopic,
    required this.findings,
    required this.recommendation,
    required this.createdby,
    required this.createddate,
    required this.modifiedby,
    required this.modifieddate,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Matrix &&
          runtimeType == other.runtimeType &&
          no == other.no &&
          auditcode == other.auditcode &&
          matrixno == other.matrixno &&
          districts == other.districts &&
          findingstopic == other.findingstopic &&
          findings == other.findings &&
          recommendation == other.recommendation &&
          createdby == other.createdby &&
          createddate == other.createddate &&
          modifiedby == other.modifiedby &&
          modifieddate == other.modifieddate);

  @override
  int get hashCode =>
      no.hashCode ^
      auditcode.hashCode ^
      matrixno.hashCode ^
      districts.hashCode ^
      findingstopic.hashCode ^
      findings.hashCode ^
      recommendation.hashCode ^
      createdby.hashCode ^
      createddate.hashCode ^
      modifiedby.hashCode ^
      modifieddate.hashCode;

  @override
  String toString() {
    return 'Matrix{' +
        ' no: $no,' +
        ' auditcode: $auditcode,' +
        ' matrixno: $matrixno,' +
        ' districts: $districts,' +
        ' findingstopic: $findingstopic,' +
        ' findings: $findings,' +
        ' recommendation: $recommendation,' +
        ' createdby: $createdby,' +
        ' createddate: $createddate,' +
        ' modifiedby: $modifiedby,' +
        ' modifieddate: $modifieddate,' +
        '}';
  }

  Matrix copyWith({
    String? no,
    String? auditcode,
    String? matrixno,
    String? districts,
    String? findingstopic,
    String? findings,
    String? recommendation,
    String? createdby,
    DateTime? createddate,
    String? modifiedby,
    DateTime? modifieddate,
  }) {
    return Matrix(
      no: no ?? this.no,
      auditcode: auditcode ?? this.auditcode,
      matrixno: matrixno ?? this.matrixno,
      districts: districts ?? this.districts,
      findingstopic: findingstopic ?? this.findingstopic,
      findings: findings ?? this.findings,
      recommendation: recommendation ?? this.recommendation,
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
      'districts': this.districts,
      'findingstopic': this.findingstopic,
      'findings': this.findings,
      'recommendation': this.recommendation,
      'createdby': this.createdby,
      'createddate': this.createddate,
      'modifiedby': this.modifiedby,
      'modifieddate': this.modifieddate,
    };
  }

  factory Matrix.fromMap(Map<String, dynamic> map) {
    return Matrix(
      no: map['no'] as String,
      auditcode: map['auditcode'] as String,
      matrixno: map['matrixno'] as String,
      districts: map['districts'] as String,
      findingstopic: map['findingstopic'] as String,
      findings: map['findings'] as String,
      recommendation: map['recommendation'] as String,
      createdby: map['createdby'] as String,
      createddate: map['createddate'] as DateTime,
      modifiedby: map['modifiedby'] as String,
      modifieddate: map['modifieddate'] as DateTime,
    );
  }

//</editor-fold>
}