import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class AnimatedNavbar extends StatefulWidget {
  final void Function(int) onTabSelected;
  final int selectedIndex; // текущий выбранный индекс

  const AnimatedNavbar({
    super.key,
    required this.onTabSelected,
    required this.selectedIndex,
  });

  @override
  State<AnimatedNavbar> createState() => _AnimatedNavbarState();
}

class _AnimatedNavbarState extends State<AnimatedNavbar> {
  StateMachineController? _controller;
  SMIInput<bool>? homeTrigger;
  SMIInput<bool>? statsTrigger;
  SMIInput<bool>? profileTrigger;

  void _onRiveInit(Artboard artboard) {
    _controller =
        StateMachineController.fromArtboard(artboard, "animated_navbar");
    if (_controller != null) {
      artboard.addController(_controller!);
      homeTrigger = _controller!.findInput<bool>("home");
      statsTrigger = _controller!.findInput<bool>("stats");
      profileTrigger = _controller!.findInput<bool>("profile");
    }
  }

  void _setActiveTab(int index) {
    if (homeTrigger == null || statsTrigger == null || profileTrigger == null) {
      return;
    }

    homeTrigger!.value = false;
    statsTrigger!.value = false;
    profileTrigger!.value = false;

    switch (index) {
      case 0:
        homeTrigger!.value = true;
        break;
      case 1:
        statsTrigger!.value = true;
        break;
      case 2:
        profileTrigger!.value = true;
        break;
    }
    widget.onTabSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Общая ширина навбара, например, 220
          // final totalWidth = constraints.maxWidth;

          // Задаём размеры кнопок (значения можно подбирать под дизайн)
          const expandedWidth = 100.0;
          const normalWidth = 60.0;

          return GestureDetector(
            onTapUp: (details) {
              final dx = details.localPosition.dx;
              int tappedIndex = 0;

              if (widget.selectedIndex == 0) {
                // Если первая кнопка выбрана (расширена)
                if (dx < expandedWidth) {
                  tappedIndex = 0;
                } else if (dx < expandedWidth + normalWidth) {
                  tappedIndex = 1;
                } else {
                  tappedIndex = 2;
                }
              } else if (widget.selectedIndex == 1) {
                // Если вторая кнопка выбрана
                if (dx < normalWidth) {
                  tappedIndex = 0;
                } else if (dx < normalWidth + expandedWidth) {
                  tappedIndex = 1;
                } else {
                  tappedIndex = 2;
                }
              } else if (widget.selectedIndex == 2) {
                // Если третья кнопка выбрана
                if (dx < normalWidth) {
                  tappedIndex = 0;
                } else if (dx < normalWidth * 2) {
                  tappedIndex = 1;
                } else {
                  tappedIndex = 2;
                }
              }
              _setActiveTab(tappedIndex);
            },
            child: RiveAnimation.asset(
              "assets/navigation_bar/animation/animated_navbar.riv",
              fit: BoxFit.contain,
              onInit: _onRiveInit,
            ),
          );
        },
      ),
    );
  }
}
