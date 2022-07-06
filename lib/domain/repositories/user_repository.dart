import 'package:dartz/dartz.dart';
import 'package:inova_task/data/models/user_model.dart';

import '../../core/error/failure.dart';

abstract class UserRepository {
  /// example UserRepository

  Future<Either<Failure, List<UserModel>>> getUserList();
}
