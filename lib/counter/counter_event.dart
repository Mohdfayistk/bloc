part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncrementEvent extends CounterEvent{}

class DecrementEvent extends CounterEvent{}

class DecrementEvent1 extends CounterEvent{}

class DecrementEvent2 extends CounterEvent{}