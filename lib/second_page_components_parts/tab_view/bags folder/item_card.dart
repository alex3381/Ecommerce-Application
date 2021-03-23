import 'package:consistency_seventh_son/second_page_components_parts/tab_view/bags folder/bag_model/bag_models.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bags_Item_Card extends StatelessWidget {
  @override
  final Crank cooks;
  final Function press;
  const Bags_Item_Card({
    Key key,
    this.cooks,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
        onTap: press,
        child: FittedBox(
            child: Stack(children: <Widget>[
          Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                  height: getProportionateScreenWidth(350),
                  width: getProportionateScreenWidth(200),
                  decoration: BoxDecoration(
                    color: cooks.cardColor2,
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26.withOpacity(0.6),
                        offset: Offset(8.0, 8.0),
                        blurRadius: 5.0,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: getProportionateScreenWidth(48),
                            width: getProportionateScreenWidth(48),
                            decoration: BoxDecoration(
                              color: cooks.color[0],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Column(children: [
                            SizedBox(
                              height: getProportionateScreenWidth(2.1),
                            ),
                            Hero(
                              tag: cooks.id.toString(),
                              child: Image.asset(
                                cooks.image[0],
                                fit: BoxFit.cover,
                                height: getProportionateScreenWidth(150),
                                width: getProportionateScreenWidth(160),
                              ),
                            ),
                            SizedBox(height: 1.0),
                            Padding(
//            product name begin here
                              padding:
                                  const EdgeInsets.only(right: 70.0, top: 5.0),
                              child: Text(
                                cooks.title,
                                style: GoogleFonts.oswald(
                                  textStyle:
                                      Theme.of(context).textTheme.headline6,
                                  color: Colors.black87,
                                  fontSize: 20,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 50.0, top: 10.0),
                              child: Text(
                                "10% Discount Offer",
                                style: GoogleFonts.oswald(
                                  textStyle:
                                      Theme.of(context).textTheme.headline2,
                                  color: Colors.black87,
                                  fontSize: 10,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ),
                            Padding(
//            product price, per quinetal, and view prices are in a row and they starts here
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 8.0),

                              child: Row(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "\$${cooks.price}",
                                        style: GoogleFonts.oswald(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                          color: Colors.black87,
                                          fontSize: 12,
                                          letterSpacing: 1.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(1.0),
                                        child: Text(
                                          "${cooks.illustration}",
                                          style: GoogleFonts.oswald(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                            color: Colors.black87,
                                            fontSize: 11,
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    "View Prices",
                                    style: GoogleFonts.oswald(
                                      textStyle:
                                          Theme.of(context).textTheme.headline6,
                                      color: Colors.black87,
                                      fontSize: 10,
                                      letterSpacing: 1.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ]))
              // ),
              // ),
              // ]
              // )
              )
        ])
            // ]
            ));
  }
}
