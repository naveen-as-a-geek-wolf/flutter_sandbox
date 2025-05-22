
part of 'example_bloc.dart';

@generateEvents
abstract class exampleEvent extends Equatable {
  const exampleEvent();
}

class ToggleColorEvent extends exampleEvent {
  final Color color;
  const ToggleColorEvent(this.color);

  @override
  List<Object?> get props => [color];
}


