import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/application/UserBloc/user_bloc.dart';
import 'package:flutter_sandbox/application/bloc/counter_bloc/conuter_bloc.dart';
import 'package:flutter_sandbox/application/example_bloc/example_bloc.dart';
import 'package:flutter_sandbox/application/serviceBloc/service_bloc.dart';
import 'package:flutter_sandbox/domain/core/dependency_injection/di_configuration.dart';
import 'package:flutter_sandbox/presentation/home/home_screen.dart';
import 'package:flutter_sandbox/presentation/profile/profile_screen.dart';
import 'package:flutter_sandbox/presentation/screen1/screen1.dart';
import 'package:flutter_sandbox/presentation/userList/users_list_screen.dart';

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
      case UsersListScreen.routeName:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => getIt<UserBloc>(),
              child: UsersListScreen(),
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
      case Screen1.routeName:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => getIt<exampleBloc>(),
              child: Screen1(),
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
