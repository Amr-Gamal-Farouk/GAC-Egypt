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
    required this.empHrCode,
    required this.empFirstName,
    required this.empSecondName,
    required this.empLastName,
    required this.empFullName,
    required this.accountName,
    required this.usrPassword,
    required this.empExt,
    required this.empPri,
    required this.empMobile0,
    required this.empMobile1,
    required this.empMobile2,
    required this.empGender,
    required this.empAddress,
    required this.empBirhtday,
    required this.comId,
    required this.dptId,
    required this.brnId,
    required this.posId,
    required this.directMngId,
    required this.directMngName,
    required this.cost,
    required this.qnt,
    required this.price,
    required this.empCreationDate,
    required this.empImageProfileUrl,
    required this.empIndividualEmail0,
    required this.empIndividualEmail1,
    required this.empIndividualEmail2,
    required this.empIndividualEmail3,
    required this.employeeActive,
    required this.userAccName,
    required this.empImg,
    required this.departmentName,
    required this.branchName,
    required this.companyName,
    required this.position,
    required this.emailsIndiv,
    required this.emailsGen,
    required this.emailsArch,
    required this.assetsCurrent,
    required this.assetsNew,
    required this.itemVMs,
    required this.empRoles,
    required this.roles,
    required this.rolesNames,
    required this.isExist,
    required this.duplicatHrCode,
  });

  int empId;
  dynamic empHrCode;
  String empFirstName;
  String empSecondName;
  String empLastName;
  String empFullName;
  String accountName;
  String usrPassword;
  String empExt;
  String empPri;
  String empMobile0;
  dynamic empMobile1;
  dynamic empMobile2;
  String empGender;
  dynamic empAddress;
  dynamic empBirhtday;
  int comId;
  int dptId;
  int brnId;
  dynamic posId;
  dynamic directMngId;
  String directMngName;
  dynamic cost;
  dynamic qnt;
  dynamic price;
  dynamic empCreationDate;
  dynamic empImageProfileUrl;
  String empIndividualEmail0;
  String empIndividualEmail1;
  dynamic empIndividualEmail2;
  dynamic empIndividualEmail3;
  dynamic employeeActive;
  dynamic userAccName;
  dynamic empImg;
  String departmentName;
  String branchName;
  String companyName;
  dynamic position;
  List<EmailsIndiv> emailsIndiv;
  List<dynamic> emailsGen;
  List<dynamic> emailsArch;
  List<dynamic> assetsCurrent;
  dynamic assetsNew;
  dynamic itemVMs;
  dynamic empRoles;
  List<Role> roles;
  List<String> rolesNames;
  dynamic isExist;
  dynamic duplicatHrCode;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    empId: json["empId"],
    empHrCode: json["empHRCode"],
    empFirstName: json["empFirstName"],
    empSecondName: json["empSecondName"],
    empLastName: json["empLastName"],
    empFullName: json["empFullName"],
    accountName: json["accountName"],
    usrPassword: json["usrPassword"],
    empExt: json["empExt"],
    empPri: json["empPri"],
    empMobile0: json["empMobile0"],
    empMobile1: json["empMobile1"],
    empMobile2: json["empMobile2"],
    empGender: json["empGender"],
    empAddress: json["empAddress"],
    empBirhtday: json["empBirhtday"],
    comId: json["comId"],
    dptId: json["dptId"],
    brnId: json["brnId"],
    posId: json["posId"],
    directMngId: json["directMngId"],
    directMngName: json["DirectMngName"],
    cost: json["Cost"],
    qnt: json["Qnt"],
    price: json["Price"],
    empCreationDate: json["empCreationDate"],
    empImageProfileUrl: json["empImageProfileUrl"],
    empIndividualEmail0: json["empIndividualEmail0"],
    empIndividualEmail1: json["empIndividualEmail1"],
    empIndividualEmail2: json["empIndividualEmail2"],
    empIndividualEmail3: json["empIndividualEmail3"],
    employeeActive: json["EmployeeActive"],
    userAccName: json["userAccName"],
    empImg: json["EmpImg"],
    departmentName: json["DepartmentName"],
    branchName: json["BranchName"],
    companyName: json["CompanyName"],
    position: json["Position"],
    emailsIndiv: List<EmailsIndiv>.from(json["emailsINDIV"].map((x) => EmailsIndiv.fromJson(x))),
    emailsGen: List<dynamic>.from(json["emailsGEN"].map((x) => x)),
    emailsArch: List<dynamic>.from(json["emailsARCH"].map((x) => x)),
    assetsCurrent: List<dynamic>.from(json["assetsCurrent"].map((x) => x)),
    assetsNew: json["assetsNew"],
    itemVMs: json["ItemVMs"],
    empRoles: json["EmpRoles"],
    roles: List<Role>.from(json["Roles"].map((x) => Role.fromJson(x))),
    rolesNames: List<String>.from(json["rolesNames"].map((x) => x)),
    isExist: json["IsExist"],
    duplicatHrCode: json["duplicatHrCode"],
  );

  Map<String, dynamic> toJson() => {
    "empId": empId,
    "empHRCode": empHrCode,
    "empFirstName": empFirstName,
    "empSecondName": empSecondName,
    "empLastName": empLastName,
    "empFullName": empFullName,
    "accountName": accountName,
    "usrPassword": usrPassword,
    "empExt": empExt,
    "empPri": empPri,
    "empMobile0": empMobile0,
    "empMobile1": empMobile1,
    "empMobile2": empMobile2,
    "empGender": empGender,
    "empAddress": empAddress,
    "empBirhtday": empBirhtday,
    "comId": comId,
    "dptId": dptId,
    "brnId": brnId,
    "posId": posId,
    "directMngId": directMngId,
    "DirectMngName": directMngName,
    "Cost": cost,
    "Qnt": qnt,
    "Price": price,
    "empCreationDate": empCreationDate,
    "empImageProfileUrl": empImageProfileUrl,
    "empIndividualEmail0": empIndividualEmail0,
    "empIndividualEmail1": empIndividualEmail1,
    "empIndividualEmail2": empIndividualEmail2,
    "empIndividualEmail3": empIndividualEmail3,
    "EmployeeActive": employeeActive,
    "userAccName": userAccName,
    "EmpImg": empImg,
    "DepartmentName": departmentName,
    "BranchName": branchName,
    "CompanyName": companyName,
    "Position": position,
    "emailsINDIV": List<dynamic>.from(emailsIndiv.map((x) => x.toJson())),
    "emailsGEN": List<dynamic>.from(emailsGen.map((x) => x)),
    "emailsARCH": List<dynamic>.from(emailsArch.map((x) => x)),
    "assetsCurrent": List<dynamic>.from(assetsCurrent.map((x) => x)),
    "assetsNew": assetsNew,
    "ItemVMs": itemVMs,
    "EmpRoles": empRoles,
    "Roles": List<dynamic>.from(roles.map((x) => x.toJson())),
    "rolesNames": List<dynamic>.from(rolesNames.map((x) => x)),
    "IsExist": isExist,
    "duplicatHrCode": duplicatHrCode,
  };
}

class EmailsIndiv {
  EmailsIndiv({
    required this.emailAddress,
  });

  String emailAddress;

  factory EmailsIndiv.fromJson(Map<String, dynamic> json) => EmailsIndiv(
    emailAddress: json["emailAddress"],
  );

  Map<String, dynamic> toJson() => {
    "emailAddress": emailAddress,
  };
}

class Role {
  Role({
    required this.roleId,
    required this.roleName,
    required this.privileges,
  });

  int roleId;
  String roleName;
  dynamic privileges;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
    roleId: json["roleId"],
    roleName: json["roleName"],
    privileges: json["Privileges"],
  );

  Map<String, dynamic> toJson() => {
    "roleId": roleId,
    "roleName": roleName,
    "Privileges": privileges,
  };
}
