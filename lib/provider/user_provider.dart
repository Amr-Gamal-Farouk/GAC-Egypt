
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
  List<EmployModel> favoriteEmployees=[];
   UserModel? selectedUser;
  int? errorCode;




  Future<bool> getEmploys() async{
    try{
      ResponseModel<List<EmployModel>> userResponseModel =await userRepository.getEmploys();
      // print (userResponseModel);
      if(userResponseModel.isSuccess){
        print("QQ>> ${userResponseModel.responseData}");
        allEmploy=userResponseModel.responseData!;
        notifyListeners();
        return true;
      }else{
       print("ERROR => ${userResponseModel.errorModel?.errorCode} : ${userResponseModel.errorModel?.errorMessage}");
       errorCode= userResponseModel.errorModel?.errorCode;
       notifyListeners();
        return false;
      }

    }catch(e){
      print("EX>> $e");
      rethrow;
      notifyListeners();
      return false;
    }

  }
  Future<bool> getEmployDetails({required String userId}) async{
    try{
      ResponseModel<UserModel> userResponseModel =await userRepository.getEmployDetails(userId: userId);
      if(userResponseModel.isSuccess){
        print ("Selected Employee>> $selectedUser");
        selectedUser=userResponseModel.responseData!;
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

  favoriteAction({required EmployModel employModel}){
    if (isFavorite(employModel: employModel)){
      favoriteEmployees.remove(employModel);
      notifyListeners();
    }else{
    favoriteEmployees.add(employModel);
    notifyListeners();
    }

  }

  bool isFavorite ({required EmployModel employModel}){
    return favoriteEmployees.contains(employModel);
  }


}