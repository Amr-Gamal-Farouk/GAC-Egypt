// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.empId,
    required this.empFullName,
    required this.empHrCode,
    required this.empExt,
    required this.empPri,
    required this.empMobile0,
    required this.empMobile1,
    required this.empMobile2,
    required this.empImageProfileUrl,
    required this.empIndividualEmail0,
    required this.empIndividualEmail1,
    required this.empIndividualEmail2,
    required this.empIndividualEmail3,
    required this.employeeActive,
    required this.empImg,
    required this.departmentName,
    required this.branchName,
    required this.companyName,
    required this.position,
    required this.emailsIndiv,
  });

  int empId;
  String empFullName;
  dynamic empHrCode;
  String empExt;
  String empPri;
  String empMobile0;
  dynamic empMobile1;
  dynamic empMobile2;
  dynamic empImageProfileUrl;
  String empIndividualEmail0;
  String empIndividualEmail1;
  dynamic empIndividualEmail2;
  dynamic empIndividualEmail3;
  dynamic employeeActive;
  dynamic empImg;
  String departmentName;
  String branchName;
  String companyName;
  String position;
  List<EmailsIndiv> emailsIndiv;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    empId: (json["empId"]!=null)?json["empId"]:"Not Available",
    empFullName: (json["empFullName"]!=null)?json["empFullName"]:"Not Available",
    empHrCode: (json["empHRCode"]!=null)?json["empHRCode"]:"Not Available",
    empExt: (json["empExt"]!=null)?json["empExt"]:"Not Available",
    empPri: (json["empPri"]!=null)?json["empPri"]:"Not Available",
    empMobile0: (json["empMobile0"]!=null)?json["empMobile0"]:"Not Available",
    empMobile1: (json["empMobile1"]!=null)?json["empMobile1"]:"Not Available",
    empMobile2: (json["empMobile2"]!=null)?json["empMobile2"]:"Not Available",
    empImageProfileUrl: (json["empImageProfileUrl"]!=null)?json["empImageProfileUrl"]:"Not Available",
    empIndividualEmail0: (json["empIndividualEmail0"]!=null)?json["empIndividualEmail0"]:"Not Available",
    empIndividualEmail1: (json["empIndividualEmail1"]!=null)?json["empIndividualEmail1"]:"Not Available",
    empIndividualEmail2: (json["empIndividualEmail2"]!=null)?json["empIndividualEmail2"]:"Not Available",
    empIndividualEmail3: (json["empIndividualEmail3"]!=null)?json["empIndividualEmail3"]:"Not Available",
    employeeActive: (json["EmployeeActive"]!=null)?json["EmployeeActive"]:"Not Available",
    empImg: (json["EmpImg"]!=null)?json["EmpImg"]:"Not Available",
    departmentName: (json["DepartmentName"]!=null)?json["DepartmentName"]:"Not Available",
    branchName: (json["BranchName"]!=null)?json["BranchName"]:"Not Available",
    companyName: (json["CompanyName"]!=null)?json["CompanyName"]:"Not Available",
    position: (json["Position"]!=null)?json["Position"]:"Not Available",
    emailsIndiv: (json["emailsINDIV"]!=null)?List<EmailsIndiv>.from(json["emailsINDIV"].map((x) => EmailsIndiv.fromJson(x))):[],
  );

  Map<String, dynamic> toJson() => {
    "empId": empId,
    "empFullName": empFullName,
    "empHRCode": empHrCode,
    "empExt": empExt,
    "empPri": empPri,
    "empMobile0": empMobile0,
    "empMobile1": empMobile1,
    "empMobile2": empMobile2,
    "empImageProfileUrl": empImageProfileUrl,
    "empIndividualEmail0": empIndividualEmail0,
    "empIndividualEmail1": empIndividualEmail1,
    "empIndividualEmail2": empIndividualEmail2,
    "empIndividualEmail3": empIndividualEmail3,
    "EmployeeActive": employeeActive,
    "EmpImg": empImg,
    "DepartmentName": departmentName,
    "BranchName": branchName,
    "CompanyName": companyName,
    "Position": position,
    "emailsINDIV": List<dynamic>.from(emailsIndiv.map((x) => x.toJson())),
  };
}

class EmailsIndiv {
  EmailsIndiv({
    required this.emailAddress,
  });

  String emailAddress;

  factory EmailsIndiv.fromJson(Map<String, dynamic> json) => EmailsIndiv(
    emailAddress: (json["emailAddress"]!=null)?json["emailAddress"]:"Not Available",
  );

  Map<String, dynamic> toJson() => {
    "emailAddress": emailAddress,
  };
}
