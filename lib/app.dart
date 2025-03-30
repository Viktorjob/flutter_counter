import 'package:flutter/material.dart';
import 'package:flutter_counter/counter/counter.dart';

class CounterApp extends MaterialApp {
  const CounterApp({
    super.key,
    super.theme,
    super.darkTheme,
    super.themeMode,
  }) : super(
    home: const CounterPage(),
    debugShowCheckedModeBanner: false,
  );
}