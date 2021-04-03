// import 'package:experiment_seventeen_fouth/all_models/all_orientation.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() => runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Back_Home(),
//     ));

class Back_Home extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            // SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: SplashScreen(),
            );
          },
        );
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(70),
                child: Column(children: [
                  SizedBox(
                    height: 100,
                  ),
                  Stack(children: <Widget>[
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: new Image.asset(
                          'assets/images/apo.jpg',
                          width: animation.value * 400,
                          height: animation.value * 800,
                          fit: BoxFit.cover,
                        ),

                        //   olor: Colors.white,
                      ),
                      height: animation.value,
                      width: animation.value,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 1.0),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment:
                          // MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.black87,
                              ),
                            ),
                          ]),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 70.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Lamp",
                                style: GoogleFonts.oswald(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  color: Colors.red,
                                  fontSize: 49,
                                  letterSpacing: 2.6,
                                )),
                            TextSpan(
                              text: 'star',
                              style: GoogleFonts.oswald(
                                textStyle:
                                    Theme.of(context).textTheme.headline2,
                                color: Colors.green,
                                fontSize: 39,
                                // letterSpacing: 1.0,
                              ),
                            )
                          ])),
                          Spacer(),
                          // Row(
                          //   children: <Widget>[
                          // IconButton(
                          //   icon: Icon(Icons.search),
                          //   iconSize: 30.0,
                          //   color: Colors.white,
                          //   onPressed: () => Navigator.pop(context),
                          // ),
                          IconButton(
                            icon: Icon(Icons.search),
                            iconSize: 25.0,
                            color: Colors.black87,
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),

                      // SizedBox(height: 40),
                    ),

                    // ),
                  ])
                ]))));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
