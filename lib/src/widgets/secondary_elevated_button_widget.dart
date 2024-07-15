import 'package:flutter/material.dart';
import 'package:recipe_app/core/colors_app.dart';

class SecondaryElevatedButtonWidget extends StatelessWidget {
  const SecondaryElevatedButtonWidget({
    super.key,
    required this.child,
    this.onPressed,
  });

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: ColorsApp.primaryColor,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 16),
      ),
      child: child,
    );
  }
}
