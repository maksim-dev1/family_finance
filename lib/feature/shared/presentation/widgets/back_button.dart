import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: SvgPicture.asset(
        'assets/shared/icons/arrow_back.svg',
      ),
    );
  }
}
