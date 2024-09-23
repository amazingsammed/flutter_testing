
class AuditReport{
  String no;
  String auditid;
  String divisions;
  String districts;
  String regions;
  String year;
  String qtr;
  String audittype;
  String auditissueddate;
  String auditissuedby;
  String filename;
  String status;
  String remarks;
  String createdby;
  DateTime createddate;
  String modifiedby;
  DateTime modifieddate;

  AuditReport({
    required this.no,
    required this.auditid,
    required this.divisions,
    required this.districts,
    required this.regions,
    required this.year,
    required this.qtr,
    required this.audittype,
    required this.auditissueddate,
    required this.auditissuedby,
    required this.filename,
    required this.status,
    required this.remarks,
    required this.createdby,
    required this.createddate,
    required this.modifiedby,
    required this.modifieddate,
  });
}