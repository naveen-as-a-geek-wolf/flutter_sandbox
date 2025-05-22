import 'package:flutter_sandbox/domain/ILoginRepo/ILoginRepo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton( as: Iloginrepo )
class LoginRepositry implements Iloginrepo{
  @override
  Future<bool> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

}