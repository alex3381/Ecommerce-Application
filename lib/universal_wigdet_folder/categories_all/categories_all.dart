
import 'package:consistency_seventh_son/universal_models/fade_in_animation.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Catego_all extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FadeAnimation(
              1.2,
              TextButton(
                  child: Text("Categories".toUpperCase(),
                      // style: TextStyle(fontSize: 14)
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline3,
                          color: Colors.pink,
                          fontSize: getProportionateScreenWidth(17))),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.pink)))),
                  onPressed: () => null),
            ),
            FadeAnimation(
              1.2,
              // SizedBox.fromSize(
              //   size: Size(200, 100), // button width and height
              TextButton(
                  child: Text(
                    "All",
                    style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline3,
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(17)),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.pinkAccent),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.pink)))),
                  onPressed: () => null), // text
            )
          ],
        ),
      ),
    );
  }
}
