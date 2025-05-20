import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'conuter_event.dart';
part 'conuter_state.dart';

class ConuterBloc extends Bloc<ConuterEvent, ConuterState> {
  ConuterBloc() : super(ConuterInitial(counter: 0)) {
    on<UpdateCounter>((event, emit) {
      emit(UpdateConuterNumber(counter: event.counter));
    });
  }
}
