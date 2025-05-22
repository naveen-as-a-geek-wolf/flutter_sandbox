import 'package:flutter_sandbox/domain/models/user_model.dart';

abstract class IUserRepo {
  Future<List<UserModel>> getUsers();
}