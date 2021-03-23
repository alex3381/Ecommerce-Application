import 'dart:ui';
import 'package:consistency_seventh_son/second_page_components_parts/secondpage_models/comprehensive.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'categories_second_page.dart';

class Gridview_Secondpage extends StatelessWidget {
  const Gridview_Secondpage({
    Key key,
    @required this.location,
    // @required this.product,
    @required this.press,
  }) : super(key: key);

  final Location location;
  // final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      SizeConfig().init(context);

      return GestureDetector(
          onTap: press,
          child: SingleChildScrollView(
              child: Column(children: <Widget>[

            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  height: getProportionateScreenWidth(300),
                  margin: EdgeInsets.all(
                    getProportionateScreenWidth(1),
                  ),
                  width: getProportionateScreenWidth(200),
                  decoration: BoxDecoration(
                    color: location.cardColor2.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                      fit: StackFit.loose,
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Hero(
                            tag: location.id.toString(),
                            child: ClipRRect(
                              clipBehavior: Clip.hardEdge,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(
                                    getProportionateScreenWidth(20)),
                                topLeft: Radius.circular(
                                    getProportionateScreenWidth(20)),
                              ),
                              child: AspectRatio(
                                  aspectRatio: 7.0 / 7.0,
                                  child: Image(
                                    height: getProportionateScreenWidth(190),
                                    width: getProportionateScreenWidth(200),
                                    image: AssetImage(
                                      location.image[0],
                                    ),
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        Positioned(
                          top: getProportionateScreenWidth(80),
                          left: getProportionateScreenWidth(10),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                iconSize: getProportionateScreenWidth(13),
                                icon: new Icon(
                                  FontAwesomeIcons.mugHot,
                                  color: Colors.orangeAccent,
                                ),
                              ),
                              SizedBox(
                                  height: getProportionateScreenWidth(8.0)),
                              Text(
                                "HOT PROMO",
                                style: GoogleFonts.oswald(
                                  textStyle:
                                      Theme.of(context).textTheme.headline2,
                                  color: Colors.deepOrange,
                                  fontSize: getProportionateScreenWidth(
                                    11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: getProportionateScreenWidth(0.0),
                          left: getProportionateScreenWidth(2.0),
                          right: getProportionateScreenWidth(2.0),
                          child: Container(
                              height: getProportionateScreenWidth(147),
                              width: getProportionateScreenWidth(150),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 0.3),
                                    blurRadius: 6.0,
                                  ),
                                ],
                                color: Colors.grey.shade50,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                border: Border.all(width: 0.10),
                              ),
                              child: Column(children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                                getProportionateScreenWidth(3)),
                                        child: Text(
                                          location.title,
                                          style: GoogleFonts.oswald(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                            color: location.cardColor2,
                                            fontSize:
                                                getProportionateScreenWidth(13),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        iconSize:
                                            getProportionateScreenWidth(13),
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          color: location.cardColor2,
                                        ),
                                      ),
                                      SizedBox(
                                          width:
                                              getProportionateScreenWidth(50)),
                                      Expanded(
                                          child: Text(
                                        "\$${location.price}",
                                        maxLines: 1,
                                        style: GoogleFonts.oswald(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline5,
                                          color: Colors.black38,
                                          fontSize:
                                              getProportionateScreenWidth(13),
                                        ),
                                      ))
                                    ]),
                                SizedBox(
                                    height: getProportionateScreenWidth(10)),
                                Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      location.description,
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.justify,
                                      maxLines: 6,
                                      style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                        color: Colors.black38,
                                        fontSize:
                                            getProportionateScreenWidth(12),
                                      ),
                                    ),
                                  ),
                                )
                              ])),
                        )
                      ]))
            ])
          ])));
    });
  }
}
