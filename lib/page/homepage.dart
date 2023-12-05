//==> 1|  Example1: BlocProvider
/*
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
        buildWhen: (previous, current) {
              print("previous:${previous.counter}");
              print("current:${current.counter}");
              return true;
            },
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
*/
//==================================================================================
//==> 2|  Example2: BlocListener,
/*
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
          "Flutter "
        ),
      ),
      body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            BlocListener<CounterBloc,CounterState>(
              listenWhen: (previous, current) => true,
              listener: (context, state) {
              if(state.counter==3){
                final snackBar = SnackBar(
                content: const Text('Yay! A SnackBar!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: const Text("3 Taps to show snackbar"),),
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
} 
*/
//===============================================================================

//==> 3|  Example3: BlocConsumer is including by BlocProvider and BlocListener
/*
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
          "Flutter "
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            BlocConsumer<CounterBloc,CounterState>(
              listener: (context, state){
                if(state.counter==3){
                  final snackBar = SnackBar(
                  content: const Text('Yay! A SnackBar!'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }  
              },
              builder: (context, state) {
              return Text(state.counter.toString());
            },),
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
} 
*/
//===============================================================================

//==> 4|  Example4: BlocSelector use to fitter update
/*
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
          "Flutter "
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            BlocSelector<CounterBloc,CounterState,bool>(
              selector: (state) => state.counter>=3?true:false, 
              builder: (context, state) {
                return Container(
                  height: 200,
                  width: 200,
                  color: state ? Colors.red : Colors.orange,
                );
              },),
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
} 
*/

//===============================================================================

//==> 5|  Example5: MultiBlocProvider

import 'package:flutter/material.dart';
import 'package:flutter_basic_bloc/bloc/counter_bloc.dart';
import 'package:flutter_basic_bloc/bloc/counter_event.dart';
import 'package:flutter_basic_bloc/bloc/counter_state.dart';
import 'package:flutter_basic_bloc/bloc_color/bloc/color_bloc_bloc.dart';
import 'package:flutter_basic_bloc/bloc_color/bloc/color_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Flutter "
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            BlocBuilder<ColorBloc,ColorState>(builder: (context, state) {
              return Container(
                height: 200,
                width: 200,
                color: state.color,
              );
            },),
            BlocBuilder<CounterBloc,CounterState>(builder: (context, state) {
              return Text(state.counter.toString());
            },),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterDescrementEvent());
                    context.read<ColorBloc>().add(CounterDescrementEvent());
                  }, 
                  child: const Icon(Icons.remove)
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrementEvent());
                    context.read<ColorBloc>().add(CounterIncrementEvent());
                  }, 
                  child: const Icon(Icons.add)
                )
              ],
            )
          ],
        ),
    );
  }
} 




