import 'package:family_finance/feature/auth/bloc/auth_bloc.dart';
import 'package:family_finance/feature/auth/presentation/screens/login_screen.dart';
import 'package:family_finance/shared/presentation/widget/custom_bottom_navigation_bar.dart';
import 'package:family_finance/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: AppAuth(),
    );
  }
}

class AppAuth extends StatelessWidget {
  const AppAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return state.maybeMap(
        orElse: () => SizedBox.shrink(),
        auntificatid: (state) => CustomBottomNavigationBar(),
        unAuntificatid: (state) => LoginScreen(),
      );
    });
  }
}
