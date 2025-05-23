
import 'package:flutter/material.dart';
import 'package:flutter_sandbox/core/routes/routes.dart';
import 'package:flutter_sandbox/presentation/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     onGenerateRoute: MyRouter.getRoutes,
     initialRoute: HomeScreen.routeName,
    );
  }


}