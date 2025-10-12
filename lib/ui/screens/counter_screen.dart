import 'package:counter_bloc_example/bloc/counter/counter_bloc.dart';
import 'package:counter_bloc_example/bloc/counter/counter_event.dart';
import 'package:counter_bloc_example/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder<CounterBloc, CounterState>(builder: (context, state)
          {
            print("Text Widget Build");
          return Text(
          state.counter.toString(),
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          );
          }
              ),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              ElevatedButton(onPressed: () {
              context.read<CounterBloc>().add(IncrementCounterEvent());
              }, child: Text('Increment'),),
              ElevatedButton(onPressed: () {
              context.read<CounterBloc>().add(DecrementCounterEvent());
              }, child: Text('Decrement'),
            ),
            ],
          ),
        ],
      ),
    );
  }
}
