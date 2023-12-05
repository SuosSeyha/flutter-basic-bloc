 class CounterState{
  int counter=0;
  CounterState({required this.counter});
}

class CounterInitialState extends CounterState{
  CounterInitialState() : super(counter: 0);
}
class CounterIncrementState extends CounterState{
  CounterIncrementState(int increasedCounter) : super(counter: increasedCounter);
}
class CounterDescrementState extends CounterState{
  CounterDescrementState(int decreasedCounter) : super(counter: decreasedCounter);
}