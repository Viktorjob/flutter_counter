import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/app.dart';
import 'package:flutter_counter/counter/counter.dart';

import 'package:flutter_counter/theme/theme_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeBloc()),
        BlocProvider(create: (_) => CounterCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return CounterApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: state.themeMode,
        );
      },
    );
  }
}