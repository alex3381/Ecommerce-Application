import 'package:consistency_seventh_son/Cueved_Navigation_Bar/curved_navigation_bar.dart';
import 'package:consistency_seventh_son/register_login_pageroute_onboarding_folders/customized_background_color/background_colors.dart';
import 'package:consistency_seventh_son/universal_models/colors_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
            // color: Colors.grey[100],

            // color: MyColors.darkBlue,
            // transparentYellow,

            // image: DecorationImage(
            //     image: AssetImage(
            //       'assets/images/gif-maker.jpg',
            //     ),
            //     fit: BoxFit.cover)
            ),
        // child:BacgroundColor(),
        child: Stack(
          children: <Widget>[
            BacgroundColor(),
            PageView(
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              controller: controller,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    // SizedBox(height: 200),
                    Center(
                      child: Image.asset(
                        'assets/images/orders-unscreen.gif',
                        fit: BoxFit.contain,
                        height: 200,
                        width: 320,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        'Get Any Thing Online',
                        textAlign: TextAlign.right,
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline6,
                          color: Colors.black,
                          fontSize: 18,
                          // letterSpacing: 2.6,
                        ),
                        // style: TextStyle(
                        //     fontWeight: FontWeight.bold, fontSize: 16
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16.0),
                      child: Text(
                          'You can buy anything ranging from digital products to hardware within few clicks.',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context).textTheme.headline4,
                              color: Colors.blueGrey,
                              fontSize: 13,
                              letterSpacing: 1.5
                              // letterSpacing: 2.6,
                              )
                          // style: TextStyle(color: Colors.grey, fontSize: 12.0),
                          ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        'assets/images/triangle-unscreen.gif',
                        height: 200,
                        width: 300,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        'Shipping to anywhere ',

                        textAlign: TextAlign.right,
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.headline6,
                            color: Colors.black,
                            fontSize: 18
                            // letterSpacing: 2.6,
                            ),

                        // style: TextStyle(
                        //     fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16.0),
                      child: Text(
                          'Be rest assured that We will ship to anywhere in the world, With 30 day 100% money back policy.',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context).textTheme.headline4,
                              color: Colors.blueGrey,
                              fontSize: 13,
                              letterSpacing: 1.5

                              // letterSpacing: 2.6,
                              )
                          // style: TextStyle(color: Colors.grey, fontSize: 12.0),
                          ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        'assets/images/scooter-running-unscreen.gif',
                        height: 200,
                        width: 300,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Text('On-time delivery',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.headline4,
                            color: Colors.black,
                            fontSize: 18,
                            // letterSpacing: 2.6,
                          )
                          // style: TextStyle(
                          //     fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16.0),
                      child: Text(
                          'You can track your product with our powerful '
                          'tracking service from any part of the world.',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context).textTheme.headline4,
                              color: Colors.blueGrey,
                              fontSize: 13,
                              letterSpacing: 1.5
                              // letterSpacing: 2.6,
                              )
                          // style: TextStyle(color: Colors.grey, fontSize: 12.0),
                          ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 16.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: pageIndex == 0 ? yellow : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: pageIndex == 1 ? yellow : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: pageIndex == 2 ? yellow : Colors.white),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Opacity(
                          opacity: pageIndex != 2 ? 1.0 : 0.0,
                          child: FlatButton(
                            splashColor: Colors.transparent,
                            child: Text(
                              'SKIP',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            onPressed: () {
                              // Navigator.of(context).pushReplacement(
                              //     MaterialPageRoute(
                              //         builder: (context) => BottomNavBar ()));
                            },
                          ),
                        ),
                        pageIndex != 2
                            ? FlatButton(
                                splashColor: Colors.transparent,
                                child: Text('NEXT',
                                    style: GoogleFonts.oswald(
                                      textStyle:
                                          Theme.of(context).textTheme.headline6,
                                      color: Colors.black87,
                                      fontSize: 18,
                                      // letterSpacing: 2.6,
                                    )
                                    // style: TextStyle(
                                    //     color: Colors.black,
                                    //     fontWeight: FontWeight.bold,
                                    //     fontSize: 16),
                                    ),
                                onPressed: () {
                                  if (!(controller.page == 2.0))
                                    controller.nextPage(
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.linear);
                                },
                              )
                            : FlatButton(
                                splashColor: Colors.transparent,
                                child: Text('FINISH',
                                    style: GoogleFonts.oswald(
                                      textStyle:
                                          Theme.of(context).textTheme.headline6,
                                      color: Colors.red,
                                      fontSize: 18,
                                      // letterSpacing: 2.6,
                                    )
                                    // style: TextStyle(
                                    //     color: Colors.black,
                                    //     fontWeight: FontWeight.bold,
                                    //     fontSize: 16),
                                    ),
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BottomNavBar()));
                                },
                              )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
