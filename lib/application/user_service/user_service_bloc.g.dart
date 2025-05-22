// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_service_bloc.dart';

// **************************************************************************
// StateGenerator
// **************************************************************************

// Events Generated for corresponding states in State Class
class UpdateIsLoadingEvent extends UserServiceEvent {
  final bool isLoading;
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

class UpdateErrorEvent extends UserServiceEvent {
  final String? error;
  const UpdateErrorEvent({required this.error});

  @override
  List<Object?> get props => [error];
}

/// A state class that represents the complete state of the 'UserServiceBloc'.
/// This class is immutable and extends Equatable for value comparison.
class UserServiceState extends Equatable {
  final bool isLoading;
  final List<User>? users;
  final String? error;

  /// Creates a new instance of UserServiceState with the given parameters.
  const UserServiceState({required this.isLoading, this.users, this.error});

  /// Creates the initial state of the 'UserServiceBloc'.
  /// This method sets up default values for all state properties.
  static UserServiceState initial() {
    return UserServiceState(isLoading: false, users: null, error: null);
  }

  /// Creates a copy of this state with the given parameters replaced.
  /// If a parameter is not provided, the value from the current state is used.
  UserServiceState copyWith(
      {bool? isLoading, List<User>? users, String? error}) {
    return UserServiceState(
        isLoading: isLoading ?? this.isLoading,
        users: users ?? this.users,
        error: error ?? this.error);
  }

  /// Creates a copy of this state with the ability to set specific fields to null.
  /// The boolean parameters control whether the corresponding field should be set to null.
  UserServiceState copyWithNull(
      {bool? isLoading, bool users = false, bool error = false}) {
    return UserServiceState(
        isLoading: isLoading ?? this.isLoading,
        users: users ? null : this.users,
        error: error ? null : this.error);
  }

  /// Registers all event handlers for the 'UserServiceBloc'.
  /// This method sets up the event-to-state mapping for all possible state updates.
  static void registerEvents(UserServiceBloc bloc) {
    bloc.on<UpdateIsLoadingEvent>((event, emit) {
      emit(bloc.state.copyWith(isLoading: event.isLoading));
    });

    bloc.on<UpdateUsersEvent>((event, emit) {
      if (event.users == null) {
        emit(bloc.state.copyWithNull(users: true));
      } else {
        emit(bloc.state.copyWith(users: event.users));
      }
    });

    bloc.on<UpdateErrorEvent>((event, emit) {
      if (event.error == null) {
        emit(bloc.state.copyWithNull(error: true));
      } else {
        emit(bloc.state.copyWith(error: event.error));
      }
    });
  }

  /// Returns a list of all properties used for equality comparison.
  @override
  List<Object?> get props => [isLoading, users, error];
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
    dynamic error = UnspecifiedDataType.instance,
  }) {
    final myBloc = read<UserServiceBloc>(); // Read the MyBloc instance
    if (isLoading != UnspecifiedDataType.instance) {
      myBloc.add(UpdateIsLoadingEvent(isLoading: isLoading as bool));
    }

    if (users != UnspecifiedDataType.instance) {
      myBloc.add(UpdateUsersEvent(users: users.cast<User>()));
    }

    if (error != UnspecifiedDataType.instance) {
      myBloc.add(UpdateErrorEvent(error: error as String?));
    }
  }
}
