import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
      ),
    );
  }
}
