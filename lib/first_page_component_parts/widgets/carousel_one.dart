import 'package:carousel_pro/carousel_pro.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';

class Carousel_plus_first_horinzontallistview extends StatefulWidget {
  _Carousel_plus_first_horinzontallistviewState createState() =>
      _Carousel_plus_first_horinzontallistviewState();
}

class _Carousel_plus_first_horinzontallistviewState
    extends State<Carousel_plus_first_horinzontallistview> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Widget imageCarousel = SizedBox(
        width: MediaQuery.of(context).size.width * 4.40,
        height: MediaQuery.of(context).size.height * 0.18,
        child: new SizedBox(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
                height: MediaQuery.of(context).size.height * 1.30,
                child: new Carousel(
                  boxFit: BoxFit.scaleDown,
                  images: [
                    Image.asset(
                        'assets/images/4athlts-duffel-bag-medium-removebg-preview.png'),
                    Image.asset('assets/images/bag1.png'),
                    Image.asset('assets/images/ring_5.png'),
                    Image.asset('assets/images/headphone_10.png'),
                    Image.asset('assets/images/headphone_11.png'),
                    Image.asset('assets/images/jeans_6.png'),
                    Image.asset('assets/images/bag_2.png'),
                    Image.asset('assets/images/bag_7.png'),
                    Image.asset(
                        'assets/images/flap-two-layer-backpack-removebg-preview.png'),
                    Image.asset('assets/images/womanshoe_3.png'),
                  ],
                  autoplay: true,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 2000),
                  dotSize: 4.0,
                  dotColor: Colors.red,
                  indicatorBgPadding: 2.0,
                  borderRadius: true,
                  dotBgColor: Colors.transparent,
                  moveIndicatorFromBottom: 180.0,
                  noRadiusForIndicator: false,
                  overlayShadow: true,
                  overlayShadowColors: Color(0xFFD7CCC8),
                  overlayShadowSize: 0.6,
                )),
          ),
        ));

    return Container(
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: <Widget>[
              SizedBox(height: getProportionateScreenWidth(120)),
              imageCarousel,
            ])));
  }
}
