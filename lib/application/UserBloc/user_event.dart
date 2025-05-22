part of 'user_bloc.dart';

@generateEvents
abstract class UserEvent extends Equatable {
  const UserEvent();
}

class LoadUsersEvent extends UserEvent {
  final List<UserModel> users = const [];

  @override
  List<Object?> get props => [users];
}
