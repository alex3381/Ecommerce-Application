import 'package:consistency_seventh_son/register_login_pageroute_onboarding_folders/onboarding_wellcome_screen_folder/welcomescreen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenTypeLayout(
      mobile: OrientationLayoutBuilder(
        portrait: (context) => Onboard_Screen(),
        landscape: (context) => Onboard_Screen(),
      ),
      tablet: OrientationLayoutBuilder(
        portrait: (context) => Onboard_Screen(),
        landscape: (context) => Onboard_Screen(),
      ),
      desktop: OrientationLayoutBuilder(
        portrait: (context) => Onboard_Screen(),
        landscape: (context) => Onboard_Screen(),
      ),
      watch: Container(color: Colors.purple),
    ));
  }
}
