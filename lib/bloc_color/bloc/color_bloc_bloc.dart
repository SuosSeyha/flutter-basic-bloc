import 'package:flutter_basic_bloc/bloc/counter_event.dart';
import 'package:flutter_basic_bloc/bloc/counter_state.dart';
import 'package:flutter_basic_bloc/bloc_color/bloc/color_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
class ColorBloc extends Bloc<CounterEvent,ColorState>{
  ColorBloc() : super(ColorInitialState()){
    on<CounterIncrementEvent>((event, emit){
      emit(ColorIncrementState(Colors.green));
    });
    on<CounterDescrementEvent>((event, emit){
      emit(ColorIncrementState(Colors.red));
    });
  }
}