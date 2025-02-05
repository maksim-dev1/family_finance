import 'package:family_finance/shared/list_screns.dart';
import 'package:family_finance/shared/presentation/widget/rive_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onTabChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listScreens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            SizedBox(
              width: 250,
              height: 68,
              child: AnimatedNavbar(
                onTabSelected: _onTabChanged,
                selectedIndex: _selectedIndex,
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 65,
              height: 65,
              child: FloatingActionButton(
                backgroundColor: Theme.of(context).colorScheme.onSurface,
                shape: const CircleBorder(),
                child: SvgPicture.asset(
                    'assets/navigation_bar/icons/add_icon.svg'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
