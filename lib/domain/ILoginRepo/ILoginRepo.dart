import '../../infrastructure/LoginRepository/login_repositry.dart';
abstract class Iloginrepo {
  factory Iloginrepo() = LoginRepositry;
  Future<bool> login();

}