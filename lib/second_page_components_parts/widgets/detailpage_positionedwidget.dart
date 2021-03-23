
import 'package:consistency_seventh_son/second_page_components_parts/secondpage_models/comprehensive.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Secondedetatail_Positioned extends StatelessWidget {
  const Secondedetatail_Positioned({
    Key key,
    @required this.location,
    @required this.press,
  }) : super(key: key);

  final Location location;
  final Function press;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Positioned(
      left: getProportionateScreenWidth(10.0),
      right: getProportionateScreenWidth(10.0),
      bottom: getProportionateScreenWidth(-53.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        elevation: 7.0,
        child: Container(
            width: getProportionateScreenWidth(300),
            // width: MediaQuery.of(context).size.width -
            //     30.0,
            decoration: BoxDecoration(
              color: location.cardColor2,

              borderRadius:
                  BorderRadius.circular(getProportionateScreenWidth(20.0)),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                  child: Container(
                      height: getProportionateScreenWidth(120),
                      width: getProportionateScreenWidth(100),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(10.0)),
                        border: Border.all(
                            color: Colors.black87,
                            style: BorderStyle.solid,
                            width: 1.0),

                      ),
                      child: Hero(
                        tag: location.id.toString(),
                        child:
                            Image.asset(location.image[1], fit: BoxFit.cover),
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      location.title,
                      style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline6,
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(20),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenWidth(3.0)),
                    Text(
                      location.illustration,
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline2,
                          fontSize: getProportionateScreenWidth(14.0),
                          color: Colors.black87),
                    ),
                    SizedBox(height: getProportionateScreenWidth(3.0)),
                    Container(
                      height: getProportionateScreenWidth(40.0),
                      width: getProportionateScreenWidth(120),
                      child: Text(
                        location.description,
                        maxLines: 3,
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.headline2,
                            fontSize: getProportionateScreenWidth(12.0),
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ]),
            ])),
      ),
    );
  }
}
