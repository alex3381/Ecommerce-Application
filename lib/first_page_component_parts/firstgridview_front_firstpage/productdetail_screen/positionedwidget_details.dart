import 'package:consistency_seventh_son/first_page_component_parts/firstgridview_front_firstpage/firstgridview_firstpage_model/first_gridview.model.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Positioned_widgetfirstgrid extends StatelessWidget {
  const Positioned_widgetfirstgrid({
    Key key,
    @required this.racoon,
    this.press,
  }) : super(key: key);

  final Racoon racoon;
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
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  blurRadius: 20.0, // soften the shadow
                  spreadRadius: 0.0, //extend the shadow
                  offset: Offset(
                    5.0, // Move to right 10  horizontally
                    5.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
              color: Colors.white,
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
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(10.0)),
                        border: Border.all(
                            color: racoon.cardColor2,
                            style: BorderStyle.solid,
                            width: 1.0),
                        // image: DecorationImage(
                        //     image: AssetImage(demoproduct.image[1]),
                      ),
                      child: Hero(
                        tag: racoon.id.toString(),
                        child: Image.asset(racoon.image[1], fit: BoxFit.cover),
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      racoon.title,
                      style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline6,
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(20),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenWidth(3.0)),
                    Text(
                      racoon.illustration,
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline2,
                          fontSize: getProportionateScreenWidth(14.0),
                          color: Colors.grey),
                    ),
                    SizedBox(height: getProportionateScreenWidth(3.0)),
                    Container(
                      height: getProportionateScreenWidth(40.0),
                      width: getProportionateScreenWidth(120),
                      child: Text(
                        racoon.description,
                        maxLines: 3,
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.headline2,
                            fontSize: getProportionateScreenWidth(12.0),
                            color: Colors.grey),
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
