


import 'package:gac/data_provider/model/employ_model.dart';
import 'package:gac/data_provider/model/response_model.dart';
import 'package:gac/data_provider/model/user_model.dart';
import 'package:gac/data_provider/services/user_service.dart';

class UserRepository {
  UserRepository._();

  static final _instance = UserRepository._();

  factory UserRepository() {
    return _instance;
  }

  Future<ResponseModel<List<EmployModel>>> getEmploys() async =>
      UserService.getEmploys();

  Future<ResponseModel<UserModel>> getEmployDetails({required String userId}) async =>
      UserService.getEmployDetails(userId: userId);
}