part of 'conuter_bloc.dart';

@immutable
sealed class ConuterEvent {}

final class UpdateCounter extends ConuterEvent{
  final int counter;
  UpdateCounter({required this.counter});
}
