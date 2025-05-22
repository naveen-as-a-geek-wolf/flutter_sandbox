import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/application/bloc/example_bloc/example_bloc.dart';
import 'package:flutter_sandbox/presentation/userList/users_list_screen.dart';

class Screen1 extends StatelessWidget {
  static const String routeName = "screen_1";

  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red),
        body: BlocBuilder<exampleBloc, exampleState>(
          builder: (context, state) {
            if (state.isLoading == true) {
              return Center(child: CircularProgressIndicator());
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: BlocBuilder<exampleBloc, exampleState>(
                        buildWhen: (previous, current) {
                  return previous.number != current.number;
                }, builder: (context, state) {
                  return Text(
                    'Text_${state.number + 1}',
                    style: TextStyle(fontSize: 20),
                  );
                })),
                SizedBox(height: 25),
                Center(
                  child: BlocBuilder<exampleBloc, exampleState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          context.setexampleBlocState(number: state.number + 1);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 40, 106, 181),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Click to Change Text',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 50),
                BlocBuilder<exampleBloc, exampleState>(
                  builder: (context, state) {
                    return Container(
                      height: 50,
                      width: 50,
                      color: state.color,
                    );
                  },
                ),
                SizedBox(height: 25),
                Center(child: BlocBuilder<exampleBloc, exampleState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        context
                            .read<exampleBloc>()
                            .add(ToggleColorEvent(state.color));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 40, 106, 181),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Click to Change Color',
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  },
                )),
                SizedBox(height: 50),
                Center(child: BlocBuilder<exampleBloc, exampleState>(
                  builder: (context, state) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, UsersListScreen.routeName);
                      },
                      child: Container(
                        height: 40,
                        width: 180,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 17, 62, 99),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Click to view users',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )),
              ],
            );
          },
        ));
  }
}
