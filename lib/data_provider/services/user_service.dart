



import 'dart:convert';

import 'package:gac/data_provider/model/employ_model.dart';
import 'package:gac/data_provider/model/response_model.dart';
import 'package:gac/data_provider/model/user_model.dart';
import 'package:gac/util/network_utilities.dart';
import 'package:gac/util/url.dart';

class UserService {
  UserService._();

  //get All employs
  static Future<ResponseModel<List<EmployModel>>> getEmploys() async {
    Map<String, String> requestHeaders = NetworkUtilities.getHeaders(
        customHeaders: {
          "Content-type": "application/json",
          "Accept": "application/json",
          "Authorization": "<Your token>",
        });

    ResponseModel responseModel = await NetworkUtilities.handleGetRequest(

        methodURL: '${URL.getURL(functionName: URL.KGetAllEmploys())}',
        // requestHeaders: requestHeaders,
        parserFunction: (userJson) {
          return employModelFromJson(userJson);
        });

    return ResponseModel(
      responseData: (responseModel.isSuccess)?responseModel.responseData:
      null,
      isSuccess: responseModel.isSuccess,
      errorModel: responseModel.errorModel,
    );
  }


  //get employ details
  static Future<ResponseModel<UserModel>> getEmployDetails({required String userId}) async {
    Map<String, String> requestHeaders = NetworkUtilities.getHeaders(
        customHeaders: {
          "Content-type": "application/json",
          "Accept": "application/json",
          "Authorization": "<Your token>"
        });

    ResponseModel responseModel = await NetworkUtilities.handleGetRequest(

        methodURL: '${URL.getURL(functionName: URL.KGetEmployDetails(id: userId))}',
        // requestHeaders: requestHeaders,
        parserFunction: (userJson) {
          return UserModel.fromJson(jsonDecode(userJson));
        });

    return ResponseModel<UserModel>(
      responseData: (responseModel.isSuccess)?responseModel.responseData:
      null,
      isSuccess: responseModel.isSuccess,
      errorModel: responseModel.errorModel,
    );
  }


}