import 'package:flutter/material.dart';
import 'package:geolocation_maps/src/ui/auth/components/logo.dart';
import 'package:geolocation_maps/src/ui/auth/components/rounded_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const LogoWidget(),
          RoundedButtonWidget(
            image: 'images/google.png',
            text: 'Login with Google',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
