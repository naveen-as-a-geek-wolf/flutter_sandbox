import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/application/bloc/conuter_bloc.dart';
import 'package:flutter_sandbox/presentation/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home_screen";
  bool isLoading = false;
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Color color;
  bool iscyne = true;

  @override
  void initState() {
    //api call
    color = Colors.cyan;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  updateColorState() {
    setState(() {
      if (iscyne) {
        color = Colors.deepOrange;
      } else {
        color = Colors.cyan;
      }
      iscyne = !iscyne;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BlocBuilder<ConuterBloc, ConuterState>(
        builder: (context, state) {
          return GestureDetector(
              onTap: () {
                
               BlocProvider.of<ConuterBloc>(context).add(UpdateCounter(counter: state.counter +1));
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Update Counter',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
        },
      ),
      body: SafeArea(child: Center(
        child: BlocBuilder<ConuterBloc, ConuterState>(
          builder: (context, state) {
            return Container(
              height: 100,
              width: 100,
              child: Text(state.counter.toString()),
            );
          },
        ),
      )),
    );
  }
}
