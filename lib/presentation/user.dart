import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../application/user_service/user_service_bloc.dart';

class UserScreen extends StatelessWidget {
  static const String routeName = "user_screen";
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserServiceBloc userService = BlocProvider.of<UserServiceBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              userService.add(FetchUsersEvent());
            },
            child: const Text('Load Users'),
          ),
          Expanded(
            child: BlocBuilder<UserServiceBloc, UserServiceState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                final String error = state.error.toString();
                if(state.error != null){
                  return Center(child: Text(error));
                }

                final users = state.users ?? [];
                if (users.isEmpty) {
                  return const Center(child: Text('No users loaded'));
                }

                return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (_, index) {
                    final user = users[index];
                    return ListTile(
                      title: Text(user.name),
                      subtitle: Text(user.email),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
