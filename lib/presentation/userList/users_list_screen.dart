import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/application/UserServiceBloc/user_bloc.dart';

class UsersListScreen extends StatelessWidget {
  static const String routeName = "users_list";

  const UsersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Users'),
        ),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state.isLoading == false && state.isLoaded == false) {
              context.read<UserBloc>().add(LoadUsersEvent());
            }
            if (state.isLoading == true) {
              return Center(child: CircularProgressIndicator());
            }
            if (state.isLoaded == true) {
              return Column(
                children: [
                  Expanded(
                      child: Scrollbar(
                    thumbVisibility: true,
                    child: ListView.builder(
                      itemCount: state.users.length,
                      itemBuilder: (BuildContext context, int index) {
                        final user = state.users[index];
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                color: const Color.fromARGB(255, 159, 211, 246),
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Name : ${user.name}',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        'UserName : ${user.userName}',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        'Email : ${user.email}',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ))
                ],
              );
            }
            return Text(state.error.toString());
          },
        ));
  }
}
