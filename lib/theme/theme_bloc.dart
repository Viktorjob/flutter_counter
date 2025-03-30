import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState(ThemeMode.light)) {
    on<ToggleThemeEvent>((event, emit) {
      emit(ThemeState(
        state.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
      ));
    });
  }
}