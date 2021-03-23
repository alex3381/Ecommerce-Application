import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Cueved_Navigation_Bar/curved_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenTypeLayout(
      mobile: OrientationLayoutBuilder(
        portrait: (context) => BottomNavBar(),
        landscape: (context) => BottomNavBar(),
      ),
      tablet: OrientationLayoutBuilder(
        portrait: (context) => BottomNavBar(),
        landscape: (context) => BottomNavBar(),
      ),
      desktop: OrientationLayoutBuilder(
        portrait: (context) => BottomNavBar(),
        landscape: (context) => BottomNavBar(),
      ),
      watch: Container(color: Colors.purple),
    ));
  }
}
