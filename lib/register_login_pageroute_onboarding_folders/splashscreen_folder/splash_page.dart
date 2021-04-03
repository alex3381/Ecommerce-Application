import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:consistency_seventh_son/register_login_pageroute_onboarding_folders/login_page/Login_Page..dart';
import 'package:consistency_seventh_son/universal_models/colors_models.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Animation<double> opacity;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 13000), vsync: this);
    opacity = Tween<double>(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward().then((_) {
      navigationPage();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void navigationPage() {
    // Navigator.of(context).pushNamed(AppRoutes.authRegister);
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => Login_Page()
            // Navigator.of(context).pushNamed(AppRoutes.intro_page);
            // intro_page()
            ));
  }

  Widget build(BuildContext context) {
    return Stack(children: [
      // BacgroundColor(),
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/alex.gif'),
                fit: BoxFit.cover)),
        child: Container(
            decoration: BoxDecoration(color: transparentYellow),
            child: SafeArea(
              child: new Scaffold(
                body: Column(children: <Widget>[
                  Expanded(
                      //   child: Opacity(
                      // opacity: opacity.value,
                      child: Center(
                    child: SizedBox(
                      width: 300.0,
                      child: DefaultTextStyle(
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline4,
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(15),
                        ),
                        child: AnimatedTextKit(
                          isRepeatingAnimation: true,
                          totalRepeatCount: 200,
                          animatedTexts: [
                            ScaleAnimatedText('BUY'),
                            ScaleAnimatedText('ORDER'),
                            ScaleAnimatedText('SHIP'),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                    ),
                  )
                      // new Image.asset('assets/images/output.png')),
                      ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 250.0,
                      child: DefaultTextStyle(
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline2,
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(15),
                        ),
                        child: AnimatedTextKit(
                          isRepeatingAnimation: true,
                          totalRepeatCount: 200,
                          animatedTexts: [
                            ScaleAnimatedText(
                              'POWERED',
                            ),
                            ScaleAnimatedText('BY'),
                            ScaleAnimatedText('FATOGUN ALEX'),
                            ScaleAnimatedText('alex.fatogun@yahoo.com'),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            )),
      )
    ]);
  }
}
