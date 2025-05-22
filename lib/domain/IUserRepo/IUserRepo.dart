import 'package:dartz/dartz.dart';
import 'package:flutter_sandbox/domain/models/user_model.dart';

abstract class IUserRepo {
  Future<Either<String, List<UserModel>>> getUsers();
}