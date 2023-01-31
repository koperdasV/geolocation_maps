import 'package:flutter/material.dart';
import 'package:geolocation_maps/resources/app_color.dart';
import 'package:geolocation_maps/src/ui/auth/components/rounded_button.dart';
import 'package:geolocation_maps/src/ui/home/home_page.dart';
import 'package:geolocation_maps/src/ui/profile/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = [
    const HomePage(),
    const ProfilePage(),
  ];
  int _selectedDestination = 0;

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor,
                ),
                currentAccountPicture: const CircleAvatar(),
                currentAccountPictureSize: const Size.square(60),
                accountName: const Text(
                  'Vasiliy Koperdas',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                accountEmail: Text(
                  'koperdasb@gmail.com',
                  style: TextStyle(
                    color: AppColor.emailColor,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              selected: _selectedDestination == 0,
              onTap: () => selectDestination(0),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
              ),
              title: const Text('Profile'),
              selected: _selectedDestination == 1,
              onTap: () => selectDestination(1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColor.kPrimaryColor),
                ),
                child: const Text(
                  'Exit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 2,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: pages[_selectedDestination],
    );
  }
}
