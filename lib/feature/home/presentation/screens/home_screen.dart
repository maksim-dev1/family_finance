import 'package:family_finance/feature/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Welcome, ',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
              TextSpan(
                text: 'User',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 1),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              thickness: 0.5,
              color: Theme.of(context).dividerColor,
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        pages: [],
      ),
    );
  }
}
