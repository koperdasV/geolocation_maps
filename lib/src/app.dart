import 'package:flutter/cupertino.dart';
import 'package:geolocation_maps/src/common/router/app_router.dart';
import 'package:geolocation_maps/src/common/widget/core_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppRouter(child: CoreApp());
  }
}
