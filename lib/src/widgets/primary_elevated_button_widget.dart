import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/core/colors_app.dart';

class PrimaryElevatedButtonWidget extends StatelessWidget {
  const PrimaryElevatedButtonWidget({
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
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
        textStyle: GoogleFonts.montserrat(
          textStyle: const TextStyle(fontSize: 16),
        ),
      ),
      child: child,
    );
  }
}
