import 'package:flutter_basic_bloc/bloc/counter_event.dart';
import 'package:flutter_basic_bloc/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc() : super(CounterInitialState()){
    on<CounterIncrementEvent>((event, emit){
      emit(CounterIncrementState(state.counter+1));
    });
    on<CounterDescrementEvent>((event, emit){
      emit(CounterDescrementState(state.counter-1));
    });
  }
}