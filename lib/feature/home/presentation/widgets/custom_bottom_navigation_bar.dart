import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final List<Widget> pages;
  const CustomBottomNavigationBar({super.key, required this.pages});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  SMITrigger? button1Trigger;
  SMITrigger? button2Trigger;
  SMITrigger? button3Trigger;

  int _currentPageIndex = 0;

  void _onRiveInit(Artboard artboard) {
    final stateMachineController = StateMachineController.fromArtboard(
      artboard,
      'StateMachineName', // Название вашего State Machine
    );
    if (stateMachineController != null) {
      artboard.addController(stateMachineController);

      // Привязываем триггеры
      button1Trigger = stateMachineController
          .findInput<bool>('isButton1Pressed') as SMITrigger?;
      button2Trigger = stateMachineController
          .findInput<bool>('isButton2Pressed') as SMITrigger?;
      button3Trigger = stateMachineController
          .findInput<bool>('isButton3Pressed') as SMITrigger?;
    }
  }

  void _onButtonPressed(int index) {
    setState(() {
      _currentPageIndex = index; // Обновляем текущий индекс страницы
    });

    // Срабатывание соответствующего триггера
    switch (index) {
      case 0:
        button1Trigger?.fire();
        break;
      case 1:
        button2Trigger?.fire();
        break;
      case 2:
        button3Trigger?.fire();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: RiveAnimation.asset('assets/untitled.riv'),
    );
  }
}


// class CustomNavBar extends StatefulWidget {
//   @override
//   _CustomNavBarState createState() => _CustomNavBarState();
// }

// class _CustomNavBarState extends State<CustomNavBar> {
//   SMITrigger? button1Trigger;
//   SMITrigger? button2Trigger;
//   SMITrigger? button3Trigger;

//   int _currentPageIndex = 0; // Индекс текущей страницы
//   final List<Widget> _pages = [HomePage(), SearchPage(), ProfilePage()]; // Список страниц

//   void _onRiveInit(Artboard artboard) {
//     final stateMachineController = StateMachineController.fromArtboard(
//       artboard,
//       'StateMachineName', // Название вашего State Machine
//     );
//     if (stateMachineController != null) {
//       artboard.addController(stateMachineController);

//       // Привязываем триггеры
//       button1Trigger = stateMachineController.findInput<bool>('isButton1Pressed') as SMITrigger?;
//       button2Trigger = stateMachineController.findInput<bool>('isButton2Pressed') as SMITrigger?;
//       button3Trigger = stateMachineController.findInput<bool>('isButton3Pressed') as SMITrigger?;
//     }
//   }

//   void _onButtonPressed(int index) {
//     setState(() {
//       _currentPageIndex = index; // Обновляем текущий индекс страницы
//     });

//     // Срабатывание соответствующего триггера
//     switch (index) {
//       case 0:
//         button1Trigger?.fire();
//         break;
//       case 1:
//         button2Trigger?.fire();
//         break;
//       case 2:
//         button3Trigger?.fire();
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Показ текущей страницы
//           _pages[_currentPageIndex],
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               height: 100,
//               child: RiveAnimation.asset(
//                 'assets/navigation_bar.riv',
//                 onInit: _onRiveInit,
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentPageIndex,
//         onTap: _onButtonPressed, // Обработка нажатий
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }