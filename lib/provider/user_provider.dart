
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gac/data_provider/model/employ_model.dart';
import 'package:gac/data_provider/model/response_model.dart';
import 'package:gac/data_provider/model/user_model.dart';
import 'package:gac/repository/user_repository.dart';

class UserProvider extends ChangeNotifier{

  UserRepository userRepository=UserRepository();
  List<EmployModel> allEmploy=[];
  late UserModel selectedUser;
  int? errorCode;




  Future<bool> getEmploys() async{
    try{
      ResponseModel<List<EmployModel>> userResponseModel =await userRepository.getEmploys();
      if(userResponseModel.isSuccess){
        allEmploy=userResponseModel.responseData!;
        print ("ALL Employs>> $allEmploy");
        notifyListeners();
        return true;
      }else{
       print("ERROR => ${userResponseModel.errorModel?.errorCode} : ${userResponseModel.errorModel?.errorMessage}");
       errorCode= userResponseModel.errorModel?.errorCode;
       notifyListeners();
        return false;
      }

    }catch(e){
      notifyListeners();
      return false;
    }

  }
  Future<bool> getEmployDetails({required String userId}) async{
    try{
      ResponseModel<UserModel> userResponseModel =await userRepository.getEmployDetails(userId: userId);
      if(userResponseModel.isSuccess){
        selectedUser=userResponseModel.responseData!;
        print ("Selected Employ>> $allEmploy");
        notifyListeners();
        return true;
      }else{
       print("ERROR => ${userResponseModel.errorModel?.errorCode} : ${userResponseModel.errorModel?.errorMessage}");
       errorCode= userResponseModel.errorModel?.errorCode;
       notifyListeners();
        return false;
      }

    }catch(e){
      notifyListeners();
      return false;
    }

  }


}