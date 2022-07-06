import 'package:inova_task/data/models/user_model.dart';

abstract class AppApi {
  Future<List<UserModel>> getUsersRequest();
}
