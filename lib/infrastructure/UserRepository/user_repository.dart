import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_sandbox/domain/IUserRepo/IUserRepo.dart';
import 'package:flutter_sandbox/domain/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepo)
class UserRepo implements IUserRepo {
  @override
  Future<Either<String, List<UserModel>>> getUsers() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return Right(jsonList.map((e) => UserModel.fromJson(e)).toList());
    } else {
      return Left('Failed to Load');
    }
  }
}
