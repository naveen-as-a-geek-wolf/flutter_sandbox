
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbloc_event_gen/annotations.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_sandbox/domain/ILoginRepo/ILoginRepo.dart';
import 'package:flutter_sandbox/domain/ILoginRepo/ISignupRepo.dart';
import 'package:injectable/injectable.dart';
part 'service_event.dart';
part 'service_state.dart';
part 'service_bloc.g.dart';

@injectable
class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  final Iloginrepo loginrepo;
  final ISignupRepo signupRepo;
  ServiceBloc(
    {
      required this.loginrepo,
      required this.signupRepo
    }
  ) : super(ServiceState.initial()){
    ServiceState.registerEvents(this);
  }

}