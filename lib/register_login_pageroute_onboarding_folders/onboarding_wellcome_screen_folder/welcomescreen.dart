import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:consistency_seventh_son/Cueved_Navigation_Bar/third_pages.dart';
import 'package:consistency_seventh_son/register_login_pageroute_onboarding_folders/fadein_animation/fadein_animation.dart';
import 'package:consistency_seventh_son/register_login_pageroute_onboarding_folders/splashscreen_folder/splash_page.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Onboard_Screen extends StatefulWidget {
  @override
  _Onboard_ScreenState createState() => _Onboard_ScreenState();
}

class _Onboard_ScreenState extends State<Onboard_Screen>
    with SingleTickerProviderStateMixin {
  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  bool hide = false;

  @override
  void initState() {
    super.initState();

    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 30.0,
    ).animate(_scaleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade,
                  child: Container(
                    height: 2000,
                    child: SplashScreen(),
                  )));
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Stack(children: [
              Container(
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/judeus-samson.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 7.8,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black87.withOpacity(.9),
                              Colors.black87.withOpacity(.4),
                            ]),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Stack(children: [
                          Container(
                            height: getProportionateScreenWidth(180),
                            child: Positioned(
                                top: 0,
                                child: Column(children: [
                                  FadeAnimation(
                                    1,
                                    Text(
                                      "Brand New",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                        color: Colors.white,
                                        fontSize:
                                            getProportionateScreenWidth(48),
                                      ),
                                    ),
                                  ),
                                  FadeAnimation(
                                    1,
                                    Text(
                                      "Perspective",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                        color: Colors.white,
                                        fontSize:
                                            getProportionateScreenWidth(48),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: getProportionateScreenWidth(200),
                                    child: DefaultTextStyle(
                                      style: const TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'Canterbury',
                                        fontWeight: FontWeight.w100,
                                      ),
                                      child: AnimatedTextKit(
                                        isRepeatingAnimation: true,
                                        totalRepeatCount: 200,
                                        animatedTexts: [
                                          ScaleAnimatedText(
                                            "Let's Start With",
                                            textStyle: GoogleFonts.oswald(
                                              color: Colors.white,
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline2,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      20),
                                              fontWeight: FontWeight.w100,
                                            ),
                                          ),
                                          ScaleAnimatedText(
                                            'Our Best Collections',
                                            textStyle: GoogleFonts.oswald(
                                              color: Colors.white,
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline2,
                                              fontWeight: FontWeight.w100,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      20),
                                            ),
                                          ),
                                          ScaleAnimatedText(
                                            'With A Brand New Outlook',
                                            textStyle: GoogleFonts.oswald(
                                              color: Colors.white,
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline2,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      20),
                                              fontWeight: FontWeight.w100,
                                            ),
                                          ),
                                        ],
                                        pause:
                                            const Duration(milliseconds: 1000),
                                        displayFullTextOnTap: true,
                                        stopPauseOnTap: false,
                                        onTap: () {
                                          print("Tap Event");
                                        },
                                      ),
                                    ),
                                  ),
                                ])),
                          )
                        ])),
                    Positioned(
                      bottom: 10,
                      left: 5,
                      right: 5,
                      child: Column(children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                hide = true;
                              });
                              _scaleController.forward();
                            },
                            child: AnimatedBuilder(
                                animation: _scaleController,
                                builder: (context, child) => Transform.scale(
                                      scale: _scaleAnimation.value,
                                      child: Container(
                                          height:
                                              getProportionateScreenWidth(40),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: Center(
                                              child: hide == false
                                                  ? Text(
                                                      "GET STARTED",
                                                      style:
                                                          GoogleFonts.openSans(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize:
                                                            getProportionateScreenWidth(
                                                                15),
                                                      ),
                                                    )
                                                  : Container())),
                                    ))),
                        SizedBox(
                          height: getProportionateScreenWidth(30),
                        ),

                        FadeAnimation(
                          1.5,
                          Container(
                            height: getProportionateScreenWidth(40),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: FadeAnimation(
                                1.2,
                                Center(
                                    child: Text(
                                  "Create Account",
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: getProportionateScreenWidth(15),
                                  ),
                                ))),
                          ),
                        ),
//
                      ]),
                    )
                  ]))
            ])));
  }
}
