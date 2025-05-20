import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/application/bloc/conuter_bloc.dart';
import 'package:flutter_sandbox/presentation/home/home_screen.dart';
import 'package:flutter_sandbox/presentation/profile/profile_screen.dart';

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
            return ProfileScreen(name: arguments);
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
