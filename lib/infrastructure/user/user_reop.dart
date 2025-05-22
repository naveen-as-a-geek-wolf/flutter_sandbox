import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import '../../domain/IUserReop/iuser_repo.dart';
import '../../models/user_model.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/users';

  @override
  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
