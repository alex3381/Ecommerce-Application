// class Crousel extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return Scaffold(
//         // backgroundColor: Colors.white,
//         body: SizedBox(
//             width: MediaQuery.of(context).size.width * 2.40,
//             height: MediaQuery.of(context).size.height * 0.17,
//             child: new SizedBox(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(20.0),
//                 child: Container(
//                     // (height: getProportionateScreenWidth(100.0)),
//                     height: MediaQuery.of(context).size.height * 1.30,
//                     width: MediaQuery.of(context).size.width * 1.40,
//                     child: Carousel(
//                       boxFit: BoxFit.cover,
//                       images: [
//                         Image.asset('assets/images/prad.PNG'),
//                         Image.asset('assets/images/Alo.PNG'),
//                         Image.asset('assets/images/beats.PNG'),
//                         Image.asset('assets/images/avaitor.PNG'),
//                         Image.asset('assets/images/calvinklein.PNG'),
//                         Image.asset('assets/images/givenchy.PNG'),
//                         Image.asset('assets/images/gucci.PNG'),
//                         Image.asset('assets/images/kolo.PNG'),
//                         Image.asset('assets/images/laurent.PNG'),
//                         Image.asset('assets/images/prada.PNG'),
//                         Image.asset('assets/images/raybon.PNG'),
//                       ],
//                       autoplay: true,
//                       animationCurve: Curves.fastOutSlowIn,
//                       animationDuration: Duration(milliseconds: 2000),
//                       dotSize: 4.0,
//                       dotColor: Colors.red,
//                       indicatorBgPadding: 2.0,
//                       borderRadius: true,
//                       dotBgColor: Colors.transparent,
//                       moveIndicatorFromBottom: 19.0,
//                       noRadiusForIndicator: false,
//                       // overlayShadow: true,
//                       // overlayShadowColors: Color(0xFFD7CCC8),
//                       // overlayShadowSize: 0.6,
//                     )),
//               ),
//             )));
//   }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';

class MyPageItem {
  String path;
  MyPageItem(this.path);
}

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List<MyPageItem> items = [
    MyPageItem('assets/images/prad.PNG'),
    MyPageItem('assets/images/Alo.PNG'),
    MyPageItem('assets/images/beats.PNG'),
    MyPageItem('assets/images/avaitor.PNG'),
    MyPageItem('assets/images/calvinklein.PNG'),
    MyPageItem('assets/images/givenchy.PNG'),
    MyPageItem('assets/images/gucci.PNG'),
    MyPageItem('assets/images/kolo.PNG'),
    MyPageItem('assets/images/laurent.PNG'),
    MyPageItem('assets/images/prada.PNG'),
    MyPageItem('assets/images/raybon.PNG'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CarouselSlider(
          options: CarouselOptions(
            height: getProportionateScreenWidth(400.0),

            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 2000),
            autoPlayCurve: Curves.bounceInOut,
            enlargeCenterPage: true,
            // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
          // autoPlay: true,
          items: items.map((i) {
            return Builder(builder: (BuildContext context) {
              return Container(
                height: getProportionateScreenWidth(200.0),
                width: getProportionateScreenWidth(600.0),
                // width: MediaQuery.of(context).size.width,
                // child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 4.40,
                        height: MediaQuery.of(context).size.height * 0.17,
                        child: new SizedBox(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 1.30,
                                  child: Image.asset(
                                    i.path,
                                    fit: BoxFit.cover,
                                  ),
                                ))))
                  ],
                ),
              );
            });
          }).toList()),
    );
  }
}
