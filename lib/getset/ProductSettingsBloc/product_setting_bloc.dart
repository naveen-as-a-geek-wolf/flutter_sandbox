
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbloc_event_gen/annotations.dart';
import 'package:equatable/equatable.dart';
part 'product_setting_event.dart';
part 'product_setting_state.dart';
part 'product_setting_bloc.g.dart';

class ProductSettingBloc extends Bloc<ProductSettingEvent, ProductSettingState> {
  ProductSettingBloc() : super(ProductSettingState.initial()){
    ProductSettingState.registerEvents(this);
  }

}