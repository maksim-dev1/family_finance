import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String prefixIcon;
  final String labelText;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.prefixIcon,
    required this.labelText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1.2,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1.2,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.onSecondary,
        prefixIcon: SvgPicture.asset(
          prefixIcon,
          fit: BoxFit.scaleDown,
        ),
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelStyle: Theme.of(context).textTheme.bodySmall,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
