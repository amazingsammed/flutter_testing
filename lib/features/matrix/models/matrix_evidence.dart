class MatrixEvidence{
  String no;
  String matrixno;
  String filename;
  String comment;
  String status;
  String createdby;
  DateTime createddate;
  String modifiedby;
  DateTime modifieddate;


//<editor-fold desc="Data Methods">


  MatrixEvidence({
    required this.no,
    required this.matrixno,
    required this.filename,
    required this.comment,
    required this.status,
    required this.createdby,
    required this.createddate,
    required this.modifiedby,
    required this.modifieddate,
  });


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is MatrixEvidence &&
              runtimeType == other.runtimeType &&
              no == other.no &&
              matrixno == other.matrixno &&
              filename == other.filename &&
              comment == other.comment &&
              status == other.status &&
              createdby == other.createdby &&
              createddate == other.createddate &&
              modifiedby == other.modifiedby &&
              modifieddate == other.modifieddate
          );


  @override
  int get hashCode =>
      no.hashCode ^
      matrixno.hashCode ^
      filename.hashCode ^
      comment.hashCode ^
      status.hashCode ^
      createdby.hashCode ^
      createddate.hashCode ^
      modifiedby.hashCode ^
      modifieddate.hashCode;


  @override
  String toString() {
    return 'MatrixEvidence{' +
        ' no: $no,' +
        ' matrixno: $matrixno,' +
        ' filename: $filename,' +
        ' comment: $comment,' +
        ' status: $status,' +
        ' createdby: $createdby,' +
        ' createddate: $createddate,' +
        ' modifiedby: $modifiedby,' +
        ' modifieddate: $modifieddate,' +
        '}';
  }


  MatrixEvidence copyWith({
    String? no,
    String? matrixno,
    String? filename,
    String? comment,
    String? status,
    String? createdby,
    DateTime? createddate,
    String? modifiedby,
    DateTime? modifieddate,
  }) {
    return MatrixEvidence(
      no: no ?? this.no,
      matrixno: matrixno ?? this.matrixno,
      filename: filename ?? this.filename,
      comment: comment ?? this.comment,
      status: status ?? this.status,
      createdby: createdby ?? this.createdby,
      createddate: createddate ?? this.createddate,
      modifiedby: modifiedby ?? this.modifiedby,
      modifieddate: modifieddate ?? this.modifieddate,
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'no': this.no,
      'matrixno': this.matrixno,
      'filename': this.filename,
      'comment': this.comment,
      'status': this.status,
      'createdby': this.createdby,
      'createddate': this.createddate,
      'modifiedby': this.modifiedby,
      'modifieddate': this.modifieddate,
    };
  }

  factory MatrixEvidence.fromMap(Map<String, dynamic> map) {
    return MatrixEvidence(
      no: map['no'] as String,
      matrixno: map['matrixno'] as String,
      filename: map['filename'] as String,
      comment: map['comment'] as String,
      status: map['status'] as String,
      createdby: map['createdby'] as String,
      createddate: map['createddate'] as DateTime,
      modifiedby: map['modifiedby'] as String,
      modifieddate: map['modifieddate'] as DateTime,
    );
  }


//</editor-fold>
}