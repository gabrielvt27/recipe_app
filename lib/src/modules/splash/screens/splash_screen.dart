import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/colors_app.dart';
import 'package:recipe_app/core/assets_app.dart';
import 'package:recipe_app/core/routes_app.dart';
import 'package:recipe_app/src/widgets/primary_elevated_button_widget.dart';
import 'package:recipe_app/core/extensions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: context.screenSize.height,
            child: Image.asset(
              AssetsApp.splash,
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Good Food',
                  style: TextStyle(
                    fontSize: 40,
                    color: ColorsApp.titleTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Deliciously simple.',
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorsApp.titleTextColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: SizedBox(
                height: context.screenSize.height * .05,
                child: PrimaryElevatedButtonWidget(
                  child: const Text('Start Cooking'),
                  onPressed: () {
                    context.go(RoutesApp.authApresentation);
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
