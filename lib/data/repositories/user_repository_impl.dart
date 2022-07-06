//import '../../data/models/category_model.dart' as categoryList;

import 'package:dartz/dartz.dart';
import 'package:inova_task/core/error/failure.dart';
import 'package:inova_task/data/models/user_model.dart';
import 'package:inova_task/data/services/local_app_api.dart';

import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<Either<Failure, List<UserModel>>> getUserList() async {
    try {
      List<UserModel> usersList = await LocalAppApi().getUsersRequest();

      return right(usersList);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  // todo: remove example
  /// example UserRepositoryImpl
/*  @override
  Future<Either<Failure, RegisterRpModel>> createNewUser(
      RegisterModel registerModel) async {
    try {
      final response = await ServerAppApi().postRegisterRequest(registerModel);
      RegisterRpModel responseModel = RegisterRpModel.fromJson(response.data);
      String _token = responseModel.accessToken.toString();

      /// save token
      LocalData().writeAccessToken(_token);
      LocalData().writeAutoLogin();

      print("token : " + _token);
      return right(responseModel);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }*/

}
