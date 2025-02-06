import 'package:family_finance/shared/presentation/widget/custom_bottom_navigation_bar.dart';
import 'package:family_finance/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: CustomBottomNavigationBar(),
    );
  }
}