import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/application/bloc/conuter_bloc.dart';
import 'package:flutter_sandbox/application/serviceBloc/service_bloc.dart';
import 'package:flutter_sandbox/domain/core/dependency_injection/di_configuration.dart';
import 'package:flutter_sandbox/presentation/home/home_screen.dart';
import 'package:flutter_sandbox/presentation/profile/profile_screen.dart';

import '../../application/user_service/user_service_bloc.dart';
import '../../presentation/user.dart';

abstract class MyRouter {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => ConuterBloc(),
              child: HomeScreen(),
            );
          },
        );

      case ProfileScreen.routeName:
        var arguments = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => getIt<ServiceBloc>(),
              child: ProfileScreen(name: arguments),
            );
          },
        );

      case UserScreen.routeName:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => getIt<UserServiceBloc>(),
              child: const UserScreen(),
            );
          },
        );
    }
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: const Text(
            'Replace with page not found',
          ),
        ),
      ),
    );
  }
}
