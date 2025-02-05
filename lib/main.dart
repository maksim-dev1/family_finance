import 'package:family_finance/shared/presentation/widget/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: CustomBottomNavigationBar(),
    );
  }
}
