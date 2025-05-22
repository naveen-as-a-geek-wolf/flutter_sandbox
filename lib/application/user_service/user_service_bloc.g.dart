// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_service_bloc.dart';

// **************************************************************************
// StateGenerator
// **************************************************************************

// Events Generated for corresponding states in State Class
class UpdateIsLoadingEvent extends UserServiceEvent {
  final bool? isLoading;
  const UpdateIsLoadingEvent({required this.isLoading});

  @override
  List<Object?> get props => [isLoading];
}

class UpdateUsersEvent extends UserServiceEvent {
  final List<User>? users;
  const UpdateUsersEvent({required this.users});

  @override
  List<Object?> get props => [users];
}

/// A state class that represents the complete state of the 'UserServiceBloc'.
/// This class is immutable and extends Equatable for value comparison.
class UserServiceState extends Equatable {
  final bool? isLoading;
  final List<User>? users;

  /// Creates a new instance of UserServiceState with the given parameters.
  const UserServiceState({this.isLoading, this.users});

  /// Creates the initial state of the 'UserServiceBloc'.
  /// This method sets up default values for all state properties.
  static UserServiceState initial() {
    return UserServiceState(isLoading: false, users: null);
  }

  /// Creates a copy of this state with the given parameters replaced.
  /// If a parameter is not provided, the value from the current state is used.
  UserServiceState copyWith({bool? isLoading, List<User>? users}) {
    return UserServiceState(
        isLoading: isLoading ?? this.isLoading, users: users ?? this.users);
  }

  /// Creates a copy of this state with the ability to set specific fields to null.
  /// The boolean parameters control whether the corresponding field should be set to null.
  UserServiceState copyWithNull({bool isLoading = false, bool users = false}) {
    return UserServiceState(
        isLoading: isLoading ? null : this.isLoading,
        users: users ? null : this.users);
  }

  /// Registers all event handlers for the 'UserServiceBloc'.
  /// This method sets up the event-to-state mapping for all possible state updates.
  static void registerEvents(UserServiceBloc bloc) {
    bloc.on<UpdateIsLoadingEvent>((event, emit) {
      if (event.isLoading == null) {
        emit(bloc.state.copyWithNull(isLoading: true));
      } else {
        emit(bloc.state.copyWith(isLoading: event.isLoading));
      }
    });

    bloc.on<UpdateUsersEvent>((event, emit) {
      if (event.users == null) {
        emit(bloc.state.copyWithNull(users: true));
      } else {
        emit(bloc.state.copyWith(users: event.users));
      }
    });
  }

  /// Returns a list of all properties used for equality comparison.
  @override
  List<Object?> get props => [isLoading, users];
}

/// Extension on BuildContext that provides convenient methods for updating the 'UserServiceBloc' state.
/// This extension simplifies state updates by providing a single method to update multiple state properties.
extension UserServiceBlocContextExtension on BuildContext {
  /// Updates the 'UserServiceBloc' state with the provided values.
  /// Only the specified parameters will be updated; others will remain unchanged.
  /// Uses UnspecifiedDataType.instance as a sentinel value to determine which parameters to update.
  void setUserServiceBlocState({
    dynamic isLoading = UnspecifiedDataType.instance,
    dynamic users = UnspecifiedDataType.instance,
  }) {
    final myBloc = read<UserServiceBloc>(); // Read the MyBloc instance
    if (isLoading != UnspecifiedDataType.instance) {
      myBloc.add(UpdateIsLoadingEvent(isLoading: isLoading as bool?));
    }

    if (users != UnspecifiedDataType.instance) {
      myBloc.add(UpdateUsersEvent(users: users.cast<User>()));
    }
  }
}
