import 'package:flutter/material.dart';
import 'package:flutter_basic_bloc/bloc/counter_bloc.dart';
import 'package:flutter_basic_bloc/bloc_color/bloc/color_bloc_bloc.dart';
import 'package:flutter_basic_bloc/page/homepage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Muliple Bloc
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
          child: MaterialApp(theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          home: const Homepage()),
        ),
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        ),
         BlocProvider<ColorBloc>(
          create: (context) => ColorBloc(),
        )
      ], 
      child: MaterialApp(theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          home: const Homepage()));
  }
  //==========================================
  //Single Bloc
  /*
  return BlocProvider<CounterBloc>(
    create: (context) => CounterBloc(),
    child: MaterialApp(theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: const Homepage()),
  );
  }
  */
}
