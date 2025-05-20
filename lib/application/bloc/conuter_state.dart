part of 'conuter_bloc.dart';

abstract class ConuterState {
  final int counter;

  ConuterState({
    required this.counter,
  });
}

class ConuterInitial extends ConuterState {
  int counter;
  ConuterInitial({required this.counter}) : super(counter: counter);
}

class UpdateConuterNumber extends ConuterState {
  int counter;

  UpdateConuterNumber({
    required this.counter,
  }) : super(counter: counter);
}
