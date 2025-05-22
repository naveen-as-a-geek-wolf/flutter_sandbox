// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_bloc.dart';

// **************************************************************************
// StateGenerator
// **************************************************************************

// Events Generated for corresponding states in State Class
class UpdateIsLoadingEvent extends exampleEvent {
  final bool? isLoading;
  const UpdateIsLoadingEvent({required this.isLoading});

  @override
  List<Object?> get props => [isLoading];
}

class UpdateNumberEvent extends exampleEvent {
  final int number;
  const UpdateNumberEvent({required this.number});

  @override
  List<Object?> get props => [number];
}

class UpdateColorEvent extends exampleEvent {
  final Color color;
  const UpdateColorEvent({required this.color});

  @override
  List<Object?> get props => [color];
}

/// A state class that represents the complete state of the 'exampleBloc'.
/// This class is immutable and extends Equatable for value comparison.
class exampleState extends Equatable {
  final bool? isLoading;
  final int number;
  final Color color;

  /// Creates a new instance of exampleState with the given parameters.
  const exampleState(
      {this.isLoading, required this.number, required this.color});

  /// Creates the initial state of the 'exampleBloc'.
  /// This method sets up default values for all state properties.
  static exampleState initial() {
    return exampleState(isLoading: true, number: 0, color: Colors.green);
  }

  /// Creates a copy of this state with the given parameters replaced.
  /// If a parameter is not provided, the value from the current state is used.
  exampleState copyWith({bool? isLoading, int? number, Color? color}) {
    return exampleState(
        isLoading: isLoading ?? this.isLoading,
        number: number ?? this.number,
        color: color ?? this.color);
  }

  /// Creates a copy of this state with the ability to set specific fields to null.
  /// The boolean parameters control whether the corresponding field should be set to null.
  exampleState copyWithNull(
      {bool isLoading = false, int? number, Color? color}) {
    return exampleState(
        isLoading: isLoading ? null : this.isLoading,
        number: number ?? this.number,
        color: color ?? this.color);
  }

  /// Registers all event handlers for the 'exampleBloc'.
  /// This method sets up the event-to-state mapping for all possible state updates.
  static void registerEvents(exampleBloc bloc) {
    bloc.on<UpdateIsLoadingEvent>((event, emit) {
      if (event.isLoading == null) {
        emit(bloc.state.copyWithNull(isLoading: true));
      } else {
        emit(bloc.state.copyWith(isLoading: event.isLoading));
      }
    });

    bloc.on<UpdateNumberEvent>((event, emit) {
      emit(bloc.state.copyWith(number: event.number));
    });

    bloc.on<UpdateColorEvent>((event, emit) {
      emit(bloc.state.copyWith(color: event.color));
    });
  }

  /// Returns a list of all properties used for equality comparison.
  @override
  List<Object?> get props => [isLoading, number, color];
}

/// Extension on BuildContext that provides convenient methods for updating the 'exampleBloc' state.
/// This extension simplifies state updates by providing a single method to update multiple state properties.
extension exampleBlocContextExtension on BuildContext {
  /// Updates the 'exampleBloc' state with the provided values.
  /// Only the specified parameters will be updated; others will remain unchanged.
  /// Uses UnspecifiedDataType.instance as a sentinel value to determine which parameters to update.
  void setexampleBlocState({
    dynamic isLoading = UnspecifiedDataType.instance,
    dynamic number = UnspecifiedDataType.instance,
    dynamic color = UnspecifiedDataType.instance,
  }) {
    final myBloc = read<exampleBloc>(); // Read the MyBloc instance
    if (isLoading != UnspecifiedDataType.instance) {
      myBloc.add(UpdateIsLoadingEvent(isLoading: isLoading as bool?));
    }

    if (number != UnspecifiedDataType.instance) {
      myBloc.add(UpdateNumberEvent(number: number as int));
    }

    if (color != UnspecifiedDataType.instance) {
      myBloc.add(UpdateColorEvent(color: color as Color));
    }
  }
}
