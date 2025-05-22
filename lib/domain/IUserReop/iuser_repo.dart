import '../../models/user_model.dart';
import 'package:dartz/dartz.dart';
abstract class IUserRepository {
  Future<Either<String, List<User>>> fetchUsers();
}