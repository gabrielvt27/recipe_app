import 'package:flutter/material.dart';
import 'package:recipe_app/core/assets_app.dart';
import 'package:recipe_app/core/colors_app.dart';
import 'package:recipe_app/core/extensions.dart';
import 'package:recipe_app/src/widgets/primary_elevated_button_widget.dart';
import 'package:recipe_app/src/widgets/textfield_widget.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_left,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Log In',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            AssetsApp.seafood,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Let's start making\ngood meals",
                  style: TextStyle(
                    color: ColorsApp.primaryColor,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 24),
                const TextFieldWidget(
                  hintText: 'Your Email',
                ),
                const SizedBox(height: 8),
                const TextFieldWidget(
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  height: 48,
                  width: context.screenSize.width,
                  child: PrimaryElevatedButtonWidget(
                    child: const Text('Create Account'),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 24),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Terms of Use ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('and'),
                    Text(
                      ' Privacy Policy',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
