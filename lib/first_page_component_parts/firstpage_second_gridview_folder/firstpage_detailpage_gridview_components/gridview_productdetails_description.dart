import 'package:consistency_seventh_son/first_page_component_parts/firstpage_second_gridview_folder/model/gridview_supstitute_model.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Gridview_View_Product_description extends StatelessWidget {
  const Gridview_View_Product_description({
    Key key,
    @required this.demoproductons,
    @required this.press,
    this.numOfReviews,
  }) : super(key: key);

  final Production demoproductons;
  final Function press;
  final numOfReviews;
  @override
  Widget build(BuildContext context) {
    var rating = 3.0;
    SizeConfig().init(context);
    return Column(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: <Widget>[
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SIZE',
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.headline6,
                            color: Colors.white,
                            fontSize: getProportionateScreenWidth(16),
                          ),
                        ),
                        Text(
                          "${demoproductons.size}",
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.headline5,
                            color: Colors.white,
                            fontSize: getProportionateScreenWidth(17),
                          ),
                        ),
                        SizedBox(width: getProportionateScreenWidth(100)),
                        ClipPath(
                          clipper: PricerCliper(),
                          child: Container(
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            height: getProportionateScreenWidth(50),
                            width: getProportionateScreenWidth(50),
                            color: Colors.black38,
                            child: Text(
                              "\$${demoproductons.price}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          getProportionateScreenWidth(15)),
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  Row(
                    children: <Widget>[
                      SmoothStarRating(
                        rating: rating,
                        isReadOnly: false,
                        size: getProportionateScreenWidth(20),
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0,
                        color: Colors.white,
                        onRated: (value) {
                          print("rating value -> $value");
                        },
                      ),
                      SizedBox(width: getProportionateScreenWidth(10)),
                      Text(
                        "$rating reviews...",
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.subtitle1,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: getProportionateScreenWidth(13),
                          letterSpacing: 1.6,
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(20)),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenWidth(10)),
                    child: Text(
                      demoproductons.description,
                      maxLines: 4,
                      style: GoogleFonts.oswald(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .5,
                          fontSize: getProportionateScreenWidth(15),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenWidth(50)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              right: getProportionateScreenWidth(10)),
                          height: getProportionateScreenWidth(50),
                          width: getProportionateScreenWidth(58),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.white),
                          ),
                          child: IconButton(
                            iconSize: getProportionateScreenWidth(20),
                            icon: SvgPicture.asset(
                              "assets/icons/add_to_cart.svg",
                              height: getProportionateScreenWidth(30),
                              fit: BoxFit.cover,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: getProportionateScreenWidth(50),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                              // color: demoproduct.color[0],
                              color: Colors.white,
                              onPressed: () {},
                              child: Text(
                                "Buy  Now".toUpperCase(),
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(20),
                                  fontWeight: FontWeight.bold,
                                  // color: Colors.
                                  color: demoproductons.cardColor2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ]))
          ]))
    ]);
  }
}

class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
