import 'package:equatable/equatable.dart';
import 'package:fbloc_event_gen/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/domain/IUserRepo/IUserRepo.dart';
import 'package:flutter_sandbox/domain/models/user_model.dart';
import 'package:injectable/injectable.dart';

part 'user_bloc.g.dart';
part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepo userRepo;
  UserBloc({required this.userRepo}) : super(UserState.initial()) {
    on<LoadUsersEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true, isLoaded: false, error: null));
      try {
        final users = await userRepo.getUsers();
        emit(state.copyWith(isLoading: false, isLoaded: true, users: users));
      } catch (e) {
        emit(state.copyWith(isLoading: false, error: e.toString()));
      }
    });

    UserState.registerEvents(this);
  }
}
