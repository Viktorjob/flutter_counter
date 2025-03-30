import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/counter/cubit/counter_cubit.dart';
import 'package:flutter_counter/theme/theme_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        actions: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return IconButton(
                icon: Icon(
                  state.themeMode == ThemeMode.light
                      ? Icons.dark_mode
                      : Icons.light_mode,
                ),
                onPressed: () {
                  context.read<ThemeBloc>().add(ToggleThemeEvent());
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, count) {
            return Text(
              '$count',
              style: Theme.of(context).textTheme.displayLarge,
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}