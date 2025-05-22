import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app.dart';
import 'package:flutter_sandbox/domain/core/dependency_injection/di_configuration.dart';

Future<void> main() async {
  await configureInjection();
  runApp(const MyApp());
}
