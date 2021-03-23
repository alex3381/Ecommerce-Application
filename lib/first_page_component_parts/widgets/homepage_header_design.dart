import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage_Header_Design extends StatefulWidget {
  @override
  _HomePage_Header_DesignState createState() => _HomePage_Header_DesignState();
}

class _HomePage_Header_DesignState extends State<HomePage_Header_Design>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.all(getValueForScreenType<double>(
        context: context,
        mobile: 10,
        tablet: 30,
        desktop: 60,
      )),
      child: Column(children: <Widget>[
        Stack(children: <Widget>[
          Container(
            height: getProportionateScreenWidth(420),
            width: MediaQuery.of(context).size.width * 2.8,
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black87.withOpacity(.9),
                Colors.black87.withOpacity(.1),
              ]),
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26.withOpacity(0.8),
                  offset: Offset(6.0, 6.0),
                  blurRadius: 10.0,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: new Image.asset(
                'assets/images/ezgif.gif',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Navigator.push(
                        // context,
                        // PageTransition(
                        //     type: PageTransitionType.fade,
                        //     child: HomePagee())
                        // );
                      }),
                  // ),
                ]),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Lamp",
                    style: GoogleFonts.oswald(
                      textStyle: Theme.of(context).textTheme.headline4,
                      color: Colors.red,
                      fontSize: getProportionateScreenWidth(48),
                      letterSpacing: 2.6,
                    ),
                  ),
                  TextSpan(
                    text: 'star',
                    style: GoogleFonts.oswald(
                      textStyle: Theme.of(context).textTheme.headline2,
                      color: Colors.green,
                      fontSize: getProportionateScreenWidth(38),
                      // letterSpacing: 1.0,
                    ),
                  )
                ])),
                // ),
                Spacer(),
                IconButton(
                  icon: Icon(FontAwesomeIcons.sortAmountDown),
                  iconSize: getProportionateScreenWidth(25),
                  color: Colors.white,
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: getProportionateScreenWidth(250),
              ),

              Text('Our New Products',
                  style: GoogleFonts.oswald(
                    textStyle: Theme.of(context).textTheme.headline3,
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(36),
                  )),
              // ),
              SizedBox(height: getProportionateScreenWidth(10)),

              Row(
                children: <Widget>[
                  Text('VIEW MORE',
                      style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline1,
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(27),
                      )),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  IconButton(
                      iconSize: getProportionateScreenWidth(25),
                      icon: new Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        // size: 18
                      ))
                ],
              ),
              // )
            ],
          ),
        ]),
      ]),
    );
  }
}
