import 'package:equatable/equatable.dart';
import 'package:fbloc_event_gen/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'example_bloc.g.dart';
part 'example_event.dart';
part 'example_state.dart';

@injectable
class exampleBloc extends Bloc<exampleEvent, exampleState> {
  exampleBloc() : super(exampleState.initial()) {
    emit(state.copyWith(isLoading: true));
    Future.delayed(Duration(seconds: 3), () {
      emit(state.copyWith(isLoading: false));
    });

    on<ToggleColorEvent>((event, emit) {
      final currentColor = event.color;
      final newColor = currentColor == Colors.red ? Colors.green : Colors.red;
      emit(state.copyWith(color: newColor));
    });

    exampleState.registerEvents(this);
  }
}
