import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class CounterState extends Equatable {
  int counter;
  CounterState({this.counter=0});

  @override
  List<Object> get props => [counter];

  CounterState copyWith({int? counter}) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }




}