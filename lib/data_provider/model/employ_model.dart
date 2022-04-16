// To parse this JSON data, do
//
//     final employModel = employModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<EmployModel> employModelFromJson(String str) => List<EmployModel>.from(json.decode(str).map((x) => EmployModel.fromJson(x)));

String employModelToJson(List<EmployModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EmployModel {
    EmployModel({
        required this.empId,
        required this.empFullName,
    });

    int empId;
    String empFullName;

    factory EmployModel.fromJson(Map<String, dynamic> json) => EmployModel(
        empId: json["empId"],
        empFullName: json["empFullName"] == null ? "" : json["empFullName"],
    );

    Map<String, dynamic> toJson() => {
        "empId": empId,
        "empFullName": empFullName == null ? "" : empFullName,
    };
}
