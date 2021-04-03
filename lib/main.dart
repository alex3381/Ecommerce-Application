import 'package:consistency_seventh_son/register_login_pageroute_onboarding_folders/onboarding_wellcome_screen_folder/welcomescreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),

      builder: DevicePreview.appBuilder,
      title: 'eCommerce int2',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        canvasColor: Colors.transparent,
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat",
      ),
      home: Onboard_Screen(),
      // HomePagee(),
    );
  }
}
