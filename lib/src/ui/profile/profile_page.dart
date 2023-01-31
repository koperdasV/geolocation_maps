import 'package:flutter/material.dart';
import 'package:geolocation_maps/resources/app_color.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: CircleAvatar(
              radius: 90,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 15),
            child: Text(
              'koperadsb@gmail.com',
              style: TextStyle(
                color: AppColor.emailColor,
                fontSize: 18,
              ),
            ),
          ),
          Text(
            'Vasiliy Koperdas',
            style: TextStyle(
              color: AppColor.nameColor,
              fontSize: 28,
            ),
          ),
        ],
      ),
    );
  }
}
