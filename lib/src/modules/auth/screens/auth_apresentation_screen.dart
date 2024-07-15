import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/core/assets_app.dart';
import 'package:recipe_app/core/colors_app.dart';
import 'package:recipe_app/core/extensions.dart';
import 'package:recipe_app/core/routes_app.dart';
import 'package:recipe_app/src/widgets/primary_elevated_button_widget.dart';
import 'package:recipe_app/src/widgets/svg_icon_widget.dart';

class AuthApresentationScreen extends StatelessWidget {
  const AuthApresentationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: context.screenSize.height,
            child: Image.asset(
              AssetsApp.donuts,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  padding: const EdgeInsets.all(32),
                  width: context.screenSize.width * .8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade200.withOpacity(0.5),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgIconWidget(
                        iconPath: AssetsApp.chefHat,
                        color: ColorsApp.titleTextColor,
                        width: context.screenSize.height * .04,
                      ),
                      const Text(
                        'Good Food',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: ColorsApp.titleTextColor,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Nutritionally balanced, easy to cook recipes. Quality fresh local ingredients.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorsApp.titleTextColor,
                        ),
                      ),
                      const SizedBox(height: 24),
                      PrimaryElevatedButtonWidget(
                        onPressed: () {
                          context.go(RoutesApp.createAccount);
                        },
                        child: const Text('Create Account'),
                      ),
                      const SizedBox(height: 24),
                      RichText(
                        text: TextSpan(
                          text: 'Already have account? ',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(fontSize: 16),
                            color: ColorsApp.titleTextColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Log In',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => context.go(RoutesApp.login),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
