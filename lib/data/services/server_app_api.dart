import 'package:dio/dio.dart';
import 'package:inova_task/data/models/user_model.dart';

import 'app_api.dart';

class ServerAppApi implements AppApi {
  final String baseServer = '';
  var dio = Dio();

  @override
  Future<List<UserModel>> getUsersRequest() {
    // TODO: implement getUsersRequest
    throw UnimplementedError();
  }
}
