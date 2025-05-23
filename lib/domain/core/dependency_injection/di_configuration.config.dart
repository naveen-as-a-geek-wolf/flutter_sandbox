// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_sandbox/application/serviceBloc/service_bloc.dart'
    as _i365;
import 'package:flutter_sandbox/domain/ILoginRepo/ILoginRepo.dart' as _i493;
import 'package:flutter_sandbox/domain/ILoginRepo/ISignupRepo.dart' as _i381;
import 'package:flutter_sandbox/infrastructure/LoginRepository/login_repositry.dart'
    as _i933;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i493.Iloginrepo>(() => _i933.LoginRepositry());
    gh.factory<_i365.ServiceBloc>(() => _i365.ServiceBloc(
          loginrepo: gh<_i493.Iloginrepo>(),
          signupRepo: gh<_i381.ISignupRepo>(),
        ));
    return this;
  }
}
