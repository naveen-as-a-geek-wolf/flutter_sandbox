import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbloc_event_gen/annotations.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_sandbox/domain/IUserReop/iuser_repo.dart';
import 'package:injectable/injectable.dart';
import '../../models/user_model.dart';
part 'user_service_event.dart';
part 'user_service_state.dart';
part 'user_service_bloc.g.dart';

@injectable
class UserServiceBloc extends Bloc<UserServiceEvent, UserServiceState> {
  final IUserRepository _userRepository;
  UserServiceBloc(this._userRepository) : super(UserServiceState.initial()) {
    UserServiceState.registerEvents(this);

    on<FetchUsersEvent>(_onFetchUsers);
  }

  Future<void> _onFetchUsers(
      FetchUsersEvent event, Emitter<UserServiceState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final users = await _userRepository.fetchUsers();
      emit(state.copyWith(users: users));
    } catch (e) {
      debugPrint('Error fetching users: $e');
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }
}
