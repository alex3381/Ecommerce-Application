import 'package:consistency_seventh_son/second_page_components_parts/tab_view/shoes_folder/shoes_model/shoe_model.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/shoes_folder/shoes_widgets/addto_cart_and _buynow.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/shoes_folder/shoes_widgets/cart_counter.dart';
import 'package:consistency_seventh_son/universal_models/colors_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailinfo extends StatelessWidget {
  final Shoe shoe;
  final Function press;
  const Detailinfo({
    Key key,
    this.shoe,
    this.press,
  }) : super(key: key);

  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(children: <Widget>[
      SizedBox(
        height: size.height,
        child: Stack(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: size.height * 0.3),
            padding: EdgeInsets.only(
              top: size.height * 0.12,
              left: kDefaultPaddin,
              right: kDefaultPaddin,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Color",
                            style: GoogleFonts.oswald(
                              textStyle: Theme.of(context).textTheme.headline4,
                              color: Colors.black,
                              fontSize: 12,
                              letterSpacing: 1.0,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              ColorDot(
                                color: Color(0xFFCDDC39),
                                isSelected: true,
                              ),
                              ColorDot(color: Color(0xFFD84315)),
                              ColorDot(color: Color(0xFFFFC5C5)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: RichText(
                            text: TextSpan(children: [
                      TextSpan(
                        text: "Size\n",
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline4,
                          color: Colors.black,
                          fontSize: 12,
                          letterSpacing: 1.0,
                        ),
                      ),
                      TextSpan(
                        text: "${shoe.sizee}cm",
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline3,
                          color: Colors.black87,
                          fontSize: 14,
                          letterSpacing: 1.0,
                        ),
                      )
                    ]))),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
                  child: Text(
                    shoe.descriptione,
                    style: TextStyle(height: 1.5),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CartCounter(),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF6464),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/heart.svg"),
                    ),
                  ],
                ),
                SizedBox(height: 70),
                AddToCart(
                  shoe: shoe,
                ),
              ],
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
              Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Classic Designers',
                      style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline4,
                        color: Colors.white,
                        fontSize: 15,
                        letterSpacing: 2.6,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      shoe.titlee,
                      style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline5,
                        color: Colors.white,
                        fontSize: 29,
                        letterSpacing: 2.6,
                      ),
                    ),
                    // SizedBox(height: kDefaultPaddin),
                    Row(
                      children: <Widget>[
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Price\n",
                            style: GoogleFonts.oswald(
                              textStyle: Theme.of(context).textTheme.headline4,
                              color: Colors.white,
                              fontSize: 14,
                              letterSpacing: 2.6,
                            ),
                          ),
                          TextSpan(
                            text: "\$${shoe.pricee}",
                            style: GoogleFonts.oswald(
                              textStyle: Theme.of(context).textTheme.headline5,
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 1.6,
                            ),
                          ),
                        ])),
                        SizedBox(width: 39),
                        Expanded(
                          child: Image.asset(
                            shoe.imagee,
                            fit: BoxFit.fitWidth,
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ])
        ]),
      )
    ]));
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: kDefaultPaddin / 4,
          right: kDefaultPaddin / 2,
        ),
        padding: EdgeInsets.all(2.5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: isSelected ? color : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ));
  }
}
