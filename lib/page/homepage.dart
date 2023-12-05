 import 'package:flutter/material.dart';
import 'package:flutter_basic_bloc/bloc/counter_bloc.dart';
import 'package:flutter_basic_bloc/bloc/counter_event.dart';
import 'package:flutter_basic_bloc/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Flutter Bloc"
        ),
      ),
      body: BlocBuilder<CounterBloc,CounterState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.counter.toString(),
                    style: const TextStyle(
                      fontSize: 50
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(CounterDescrementEvent());
                        }, 
                        child: const Icon(Icons.remove)
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(CounterIncrementEvent());
                        }, 
                        child: const Icon(Icons.add)
                      )
                    ],
                  )
                ],
              ),
            );
          }
        )
    );
  }
} 

