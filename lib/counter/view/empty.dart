import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Пусто',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
