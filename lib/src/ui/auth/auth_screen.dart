import 'package:flutter/material.dart';
import 'package:geolocation_maps/src/feature/home_screen.dart';
import 'package:geolocation_maps/src/ui/auth/components/logo.dart';
import 'package:geolocation_maps/src/ui/auth/components/rounded_button.dart';
import 'package:geolocation_maps/src/ui/home/home_page.dart';

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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
