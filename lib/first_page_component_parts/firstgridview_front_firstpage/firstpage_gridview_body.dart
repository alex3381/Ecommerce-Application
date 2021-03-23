import 'package:consistency_seventh_son/first_page_component_parts/firstgridview_front_firstpage/firstgridview_firstpage_model/first_gridview.model.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FirstPage_GridView extends StatelessWidget {
  const FirstPage_GridView({
    Key key,
    @required this.racoons,
    @required this.press,
    this.numOfReviews,
  }) : super(key: key);

  final Racoon racoons;
  final Function press;
  final numOfReviews;

  @override
  Widget build(BuildContext context) {
    var rating = 3.0;
    return GestureDetector(
        onTap: press,
        child: Scaffold(
            body: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: getProportionateScreenWidth(300.0),
                  child: Material(
                      elevation: 7.0,
                      clipBehavior: Clip.hardEdge,
                      child: ClipRRect(
                        clipBehavior: Clip.antiAlias,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.2),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 10.0, //extend the shadow
                                offset: Offset(
                                  10.0, // Move to right 10  horizontally
                                  10.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                            color: Color(0xFFFFC5C5),
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(20.0)),
                          ),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(
                                            getProportionateScreenWidth(10)),
                                        child: Container(
                                            height: getProportionateScreenWidth(
                                                160),
                                            width: getProportionateScreenWidth(
                                                140),
                                            decoration: BoxDecoration(
                                              color: racoons.cardColor2,
                                              borderRadius: BorderRadius.circular(
                                                  getProportionateScreenWidth(
                                                      10.0)),
                                              border: Border.all(
                                                  color: racoons.cardColor2,
                                                  style: BorderStyle.solid,
                                                  width: 1.0),
                                              // image: DecorationImage(
                                              //     image: AssetImage(demoproduct.image[1]),
                                            ),
                                            child: Hero(
                                              tag: racoons.id.toString(),
                                              child: Image.asset(
                                                  racoons.image[0],
                                                  fit: BoxFit.cover),
                                            )),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          Text(
                                            racoons.title,
                                            style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline6,
                                              color: Colors.black,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      20),
                                            ),
                                          ),
                                          SizedBox(
                                              height:
                                                  getProportionateScreenWidth(
                                                      3.0)),
                                          Text(
                                            racoons.illustration,
                                            style: GoogleFonts.oswald(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline2,
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        14.0),
                                                color: Colors.grey),
                                          ),
                                          SizedBox(
                                              height:
                                                  getProportionateScreenWidth(
                                                      3.0)),
                                          Container(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SmoothStarRating(
                                                    rating: rating,
                                                    isReadOnly: false,
                                                    size:
                                                        getProportionateScreenWidth(
                                                            15),
                                                    filledIconData: Icons.star,
                                                    halfFilledIconData:
                                                        Icons.star_half,
                                                    defaultIconData:
                                                        Icons.star_border,
                                                    starCount: 5,
                                                    allowHalfRating: true,
                                                    spacing: 2.0,
                                                    color: Colors.deepOrange,
                                                    onRated: (value) {
                                                      print(
                                                          "rating value -> $value");
                                                    },
                                                  ),
                                                  SizedBox(width: 40),
                                                  // Expanded(
                                                  Text(
                                                    "\$${racoons.price}",
                                                    maxLines: 1,
                                                    style: GoogleFonts.oswald(
                                                      textStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .headline6,
                                                      color: Colors.black,
                                                      fontSize:
                                                          getProportionateScreenWidth(
                                                              13),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          SizedBox(
                                              height:
                                                  getProportionateScreenWidth(
                                                      5.0)),
                                          Container(
                                            height: getProportionateScreenWidth(
                                                50.0),
                                            width: getProportionateScreenWidth(
                                                120),
                                            child: Text(
                                              racoons.description,
                                              maxLines: 3,
                                              style: GoogleFonts.oswald(
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .headline2,
                                                  fontSize:
                                                      getProportionateScreenWidth(
                                                          12.0),
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                              ]),
                        ),
                      )),
                ))));
  }
}
