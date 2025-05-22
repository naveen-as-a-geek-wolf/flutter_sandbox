// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bloc.dart';

// **************************************************************************
// StateGenerator
// **************************************************************************

// Events Generated for corresponding states in State Class
class UpdateIsLoadingEvent extends UserEvent {
  final bool? isLoading;
  const UpdateIsLoadingEvent({required this.isLoading});

  @override
  List<Object?> get props => [isLoading];
}

class UpdateIsLoadedEvent extends UserEvent {
  final bool? isLoaded;
  const UpdateIsLoadedEvent({required this.isLoaded});

  @override
  List<Object?> get props => [isLoaded];
}

class UpdateUsersEvent extends UserEvent {
  final List<UserModel> users;
  const UpdateUsersEvent({required this.users});

  @override
  List<Object?> get props => [users];
}

class UpdateErrorEvent extends UserEvent {
  final String? error;
  const UpdateErrorEvent({required this.error});

  @override
  List<Object?> get props => [error];
}

/// A state class that represents the complete state of the 'UserBloc'.
/// This class is immutable and extends Equatable for value comparison.
class UserState extends Equatable {
  final bool? isLoading;
  final bool? isLoaded;
  final List<UserModel> users;
  final String? error;

  /// Creates a new instance of UserState with the given parameters.
  const UserState(
      {this.isLoading, this.isLoaded, required this.users, this.error});

  /// Creates the initial state of the 'UserBloc'.
  /// This method sets up default values for all state properties.
  static UserState initial() {
    return UserState(
        isLoading: false, isLoaded: false, users: const [], error: null);
  }

  /// Creates a copy of this state with the given parameters replaced.
  /// If a parameter is not provided, the value from the current state is used.
  UserState copyWith(
      {bool? isLoading,
      bool? isLoaded,
      List<UserModel>? users,
      String? error}) {
    return UserState(
        isLoading: isLoading ?? this.isLoading,
        isLoaded: isLoaded ?? this.isLoaded,
        users: users ?? this.users,
        error: error ?? this.error);
  }

  /// Creates a copy of this state with the ability to set specific fields to null.
  /// The boolean parameters control whether the corresponding field should be set to null.
  UserState copyWithNull(
      {bool isLoading = false,
      bool isLoaded = false,
      List<UserModel>? users,
      bool error = false}) {
    return UserState(
        isLoading: isLoading ? null : this.isLoading,
        isLoaded: isLoaded ? null : this.isLoaded,
        users: users ?? this.users,
        error: error ? null : this.error);
  }

  /// Registers all event handlers for the 'UserBloc'.
  /// This method sets up the event-to-state mapping for all possible state updates.
  static void registerEvents(UserBloc bloc) {
    bloc.on<UpdateIsLoadingEvent>((event, emit) {
      if (event.isLoading == null) {
        emit(bloc.state.copyWithNull(isLoading: true));
      } else {
        emit(bloc.state.copyWith(isLoading: event.isLoading));
      }
    });

    bloc.on<UpdateIsLoadedEvent>((event, emit) {
      if (event.isLoaded == null) {
        emit(bloc.state.copyWithNull(isLoaded: true));
      } else {
        emit(bloc.state.copyWith(isLoaded: event.isLoaded));
      }
    });

    bloc.on<UpdateUsersEvent>((event, emit) {
      emit(bloc.state.copyWith(users: event.users));
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
  List<Object?> get props => [isLoading, isLoaded, users, error];
}

/// Extension on BuildContext that provides convenient methods for updating the 'UserBloc' state.
/// This extension simplifies state updates by providing a single method to update multiple state properties.
extension UserBlocContextExtension on BuildContext {
  /// Updates the 'UserBloc' state with the provided values.
  /// Only the specified parameters will be updated; others will remain unchanged.
  /// Uses UnspecifiedDataType.instance as a sentinel value to determine which parameters to update.
  void setUserBlocState({
    dynamic isLoading = UnspecifiedDataType.instance,
    dynamic isLoaded = UnspecifiedDataType.instance,
    dynamic users = UnspecifiedDataType.instance,
    dynamic error = UnspecifiedDataType.instance,
  }) {
    final myBloc = read<UserBloc>(); // Read the MyBloc instance
    if (isLoading != UnspecifiedDataType.instance) {
      myBloc.add(UpdateIsLoadingEvent(isLoading: isLoading as bool?));
    }

    if (isLoaded != UnspecifiedDataType.instance) {
      myBloc.add(UpdateIsLoadedEvent(isLoaded: isLoaded as bool?));
    }

    if (users != UnspecifiedDataType.instance) {
      myBloc.add(UpdateUsersEvent(users: users.cast<UserModel>()));
    }

    if (error != UnspecifiedDataType.instance) {
      myBloc.add(UpdateErrorEvent(error: error as String?));
    }
  }
}
