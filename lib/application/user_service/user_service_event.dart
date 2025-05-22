
part of 'user_service_bloc.dart';

@generateEvents
abstract class UserServiceEvent extends Equatable {
  const UserServiceEvent();
}

class FetchUsersEvent extends UserServiceEvent {
  const FetchUsersEvent();

  @override
  List<Object?> get props => [];
}
