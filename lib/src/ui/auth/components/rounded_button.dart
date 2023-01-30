import 'package:flutter/material.dart';
import 'package:geolocation_maps/resources/app_color.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onPressed;
  const RoundedButtonWidget({
    Key? key,
    required this.image,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.buttonColor),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Ink(
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                Image(image: AssetImage(image)),
                const SizedBox(width: 40),
                Flexible(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
