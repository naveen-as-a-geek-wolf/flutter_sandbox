// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_bloc.dart';

// **************************************************************************
// StateGenerator
// **************************************************************************

// Events Generated for corresponding states in State Class
class UpdateIsLoadingEvent extends ServiceEvent {
  final bool? isLoading;
  const UpdateIsLoadingEvent({required this.isLoading});

  @override
  List<Object?> get props => [isLoading];
}

/// A state class that represents the complete state of the 'ServiceBloc'.
/// This class is immutable and extends Equatable for value comparison.
class ServiceState extends Equatable {
  final bool? isLoading;

  /// Creates a new instance of ServiceState with the given parameters.
  const ServiceState({this.isLoading});

  /// Creates the initial state of the 'ServiceBloc'.
  /// This method sets up default values for all state properties.
  static ServiceState initial() {
    return ServiceState(isLoading: false);
  }

  /// Creates a copy of this state with the given parameters replaced.
  /// If a parameter is not provided, the value from the current state is used.
  ServiceState copyWith({bool? isLoading}) {
    return ServiceState(isLoading: isLoading ?? this.isLoading);
  }

  /// Creates a copy of this state with the ability to set specific fields to null.
  /// The boolean parameters control whether the corresponding field should be set to null.
  ServiceState copyWithNull({bool isLoading = false}) {
    return ServiceState(isLoading: isLoading ? null : this.isLoading);
  }

  /// Registers all event handlers for the 'ServiceBloc'.
  /// This method sets up the event-to-state mapping for all possible state updates.
  static void registerEvents(ServiceBloc bloc) {
    bloc.on<UpdateIsLoadingEvent>((event, emit) {
      if (event.isLoading == null) {
        emit(bloc.state.copyWithNull(isLoading: true));
      } else {
        emit(bloc.state.copyWith(isLoading: event.isLoading));
      }
    });
  }

  /// Returns a list of all properties used for equality comparison.
  @override
  List<Object?> get props => [isLoading];
}

/// Extension on BuildContext that provides convenient methods for updating the 'ServiceBloc' state.
/// This extension simplifies state updates by providing a single method to update multiple state properties.
extension ServiceBlocContextExtension on BuildContext {
  /// Updates the 'ServiceBloc' state with the provided values.
  /// Only the specified parameters will be updated; others will remain unchanged.
  /// Uses UnspecifiedDataType.instance as a sentinel value to determine which parameters to update.
  void setServiceBlocState({
    dynamic isLoading = UnspecifiedDataType.instance,
  }) {
    final myBloc = read<ServiceBloc>(); // Read the MyBloc instance
    if (isLoading != UnspecifiedDataType.instance) {
      myBloc.add(UpdateIsLoadingEvent(isLoading: isLoading as bool?));
    }
  }
}
