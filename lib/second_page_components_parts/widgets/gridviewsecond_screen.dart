import 'dart:ui';

import 'package:consistency_seventh_son/second_page_components_parts/secondpage_models/comprehensive.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Stack(
            overflow: Overflow.visible,
            clipBehavior: Clip.hardEdge,
            fit: StackFit.passthrough,
            children: [
              Material(
                elevation: 7,
                child: Container(
                  decoration: BoxDecoration(
                    // color: Color(0xFFFFC5C5),

                    color: location.cardColor2,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(2.0, 2.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: Hero(
                    tag: location.id.toString(),
                    child: AspectRatio(
                      aspectRatio: 6.0 / 5.0,
                      child:
                          Image.asset(location.image[0], fit: BoxFit.contain),
                    ),
                  ),
                ),
              ),
              Positioned(
                  right: 5,
                  bottom: -50,
                  left: 5,
                  child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      elevation: 7.0,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        child: Expanded(
                                          child: Text(
                                            location.title,
                                            style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline6,
                                              color: location.color[0],
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: IconButton(
                                          iconSize:
                                              getProportionateScreenWidth(13),
                                          icon: Icon(
                                            Icons.shopping_cart,
                                            color: location.color[0],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "\$${location.price}",
                                        maxLines: 1,
                                        style: GoogleFonts.oswald(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline1,
                                          color: Colors.black,
                                          fontSize:
                                              getProportionateScreenWidth(13),
                                        ),
                                      )
                                    ]),
                                Row(children: [
                                  Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          location.description,
                                          maxLines: 2,
                                          style: GoogleFonts.oswald(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                            color: Colors.grey,
                                            fontSize:
                                                getProportionateScreenWidth(10),
                                          ),
                                        )),
                                  )
                                ]),
                              ])))),
            ]),
      ),
    );
  }
}

// child:
//     Stack(overflow: Overflow.visible, fit: StackFit.loose, children: [
//   // BacgroundColor(),
//   Padding(
//       padding: EdgeInsets.all(20),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(
//               color: location.cardColor2.withOpacity(0.4),
//               spreadRadius: 2,
//               blurRadius: 2,
//               offset: Offset(0, 1), // changes position of shadow
//             ),
//           ],
//         ),
//         clipBehavior: Clip.antiAlias,
//         child: Stack(
//           overflow: Overflow.visible,
//           fit: StackFit.loose,
//           children: [
//             Hero(
//               tag: location.id.toString(),
//               child: AspectRatio(
//                 aspectRatio: 5.0 / 4.0,
//                 child: Image.asset(location.image[0],
//                     height: 100, width: 100, fit: BoxFit.cover),
//               ),
//             ),
//             Stack(
//                 overflow: Overflow.visible,
//                 fit: StackFit.passthrough,
//                 clipBehavior: Clip.antiAlias,
//                 children: [
//                   Positioned(
//                     right: 5,
//                     top: 12,
//                     left: 39,
//                     child: Row(
//                       children: <Widget>[
//                         IconButton(
//                           iconSize: getProportionateScreenWidth(13),
//                           icon: new Icon(
//                             FontAwesomeIcons.mugHot,
//                             color: Colors.orangeAccent,
//                           ),
//                         ),
//                         SizedBox(
//                             height: getProportionateScreenWidth(8.0)),
//                         Text(
//                           "HOT PROMO",
//                           style: GoogleFonts.oswald(
//                             textStyle:
//                                 Theme.of(context).textTheme.headline2,
//                             color: Colors.deepOrange,
//                             fontSize: getProportionateScreenWidth(
//                               11,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                       bottom: getProportionateScreenWidth(-40.0),
//                       left: getProportionateScreenWidth(2.0),
//                       right: getProportionateScreenWidth(2.0),
//                       child: Container(
//                         height: getProportionateScreenWidth(120),
//                         width: getProportionateScreenWidth(150),
//                         decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black26,
//                               offset: Offset(0.0, 0.3),
//                               blurRadius: 6.0,
//                             ),
//                           ],
//                           color: Colors.grey.shade50,
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(20),
//                             bottomRight: Radius.circular(20),
//                           ),
//                           border: Border.all(width: 0.10),
//                         ),
//                         child: Column(children: [
//                           Row(
//                               mainAxisAlignment:
//                                   MainAxisAlignment.start,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.symmetric(
//                                       horizontal:
//                                           getProportionateScreenWidth(
//                                               3)),
//                                   child: Text(
//                                     location.title,
//                                     style: GoogleFonts.oswald(
//                                       textStyle: Theme.of(context)
//                                           .textTheme
//                                           .headline6,
//                                       color: location.cardColor2,
//                                       fontSize:
//                                           getProportionateScreenWidth(
//                                               13),
//                                     ),
//                                   ),
//                                 ),
//                                 IconButton(
//                                   iconSize:
//                                       getProportionateScreenWidth(13),
//                                   icon: Icon(
//                                     Icons.shopping_cart,
//                                     color: location.cardColor2,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                     width: getProportionateScreenWidth(
//                                         15)),
//                                 Expanded(
//                                     child: Text(
//                                   "\$${location.price}",
//                                   maxLines: 1,
//                                   style: GoogleFonts.oswald(
//                                     textStyle: Theme.of(context)
//                                         .textTheme
//                                         .headline5,
//                                     color: Colors.black38,
//                                     fontSize:
//                                         getProportionateScreenWidth(13),
//                                   ),
//                                 ))
//                               ]),
//                           Row(children: [
//                             Expanded(
//                               child: Padding(
//                                 padding:
//                                     EdgeInsets.symmetric(horizontal: 8),
//                                 child: Text(
//                                   location.description,
//                                   textDirection: TextDirection.ltr,
//                                   textAlign: TextAlign.justify,
//                                   maxLines: 2,
//                                   style: GoogleFonts.oswald(
//                                     textStyle: Theme.of(context)
//                                         .textTheme
//                                         .headline2,
//                                     color: Colors.black38,
//                                     fontSize:
//                                         getProportionateScreenWidth(10),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ])
//                         ]),
//                       ))
//                 ]),
// child: Item_Banner(
// demoproductions: demoproductions,
// ),
//       // ),
//     ],
//   ),
// ))
// ])
//     );
//   }
// }

// }}
// return LayoutBuilder(
//     builder: (BuildContext context, BoxConstraints viewportConstraints) {
//   SizeConfig().init(context);
//
//   return GestureDetector(
//       onTap: press,
//       child: SingleChildScrollView(
//           // child: Column(children: <Widget>[
//
//           // child: Column(
//           //     crossAxisAlignment: CrossAxisAlignment.start,
//           //     children: [
//           // child: Container(
//           //     height: getProportionateScreenWidth(500),
//           //     margin: EdgeInsets.all(
//           //       getProportionateScreenWidth(1),
//           //     ),
//           //     width: getProportionateScreenWidth(200),
//           //     decoration: BoxDecoration(
//           //       color: location.cardColor2.withOpacity(0.7),
//           //       borderRadius: BorderRadius.circular(20),
//           //
//           // ),
//           child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Stack(clipBehavior: Clip.antiAlias,
//                   // alignment: Alignment.topCenter,
//                   children: <Widget>[
//                     Hero(
//                       tag: location.id.toString(),
//                       // child: ClipRRect(
//                       //   clipBehavior: Clip.hardEdge,
//                       child: Container(
//                           height: 150,
//                           decoration: BoxDecoration(
//                             color: location.cardColor2,
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(
//                                   getProportionateScreenWidth(20)),
//                               topLeft: Radius.circular(
//                                   getProportionateScreenWidth(20)),
//                             ),
//                           ),
//                           child: AspectRatio(
//                             aspectRatio: 17.0 / 16.0,
//                             child:
//                                 // height: getProportionateScreenWidth(100),
//                                 // width: getProportionateScreenWidth(200),
//                                 Image.asset(
//                               location.image[0],
//                               fit: BoxFit.contain,
//                             ),
//                           )),
//                     ),
//                     Stack(
//                         overflow: Overflow.visible,
//                         fit: StackFit.loose,
//                         clipBehavior: Clip.antiAlias,
//                         children: [
//                           Positioned(
//                             right: 5,
//                             top: 80,
//                             left: 5,
// Positioned(
//   top: getProportionateScreenWidth(80),
//   left:
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//   getProportionateScreenWidth(10),
//                                 child: Row(
//                                   children: <Widget>[
//                                     IconButton(
//                                       iconSize: getProportionateScreenWidth(13),
//                                       icon: new Icon(
//                                         FontAwesomeIcons.mugHot,
//                                         color: Colors.orangeAccent,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                         height:
//                                             getProportionateScreenWidth(8.0)),
//                                     Text(
//                                       "HOT PROMO",
//                                       style: GoogleFonts.oswald(
//                                         textStyle: Theme.of(context)
//                                             .textTheme
//                                             .headline2,
//                                         color: Colors.deepOrange,
//                                         fontSize: getProportionateScreenWidth(
//                                           11,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Positioned(
//                                 top: getProportionateScreenWidth(140.0),
//                                 left: getProportionateScreenWidth(2.0),
//                                 right: getProportionateScreenWidth(2.0),
//                                 child: Container(
//                                     height: getProportionateScreenWidth(120),
//                                     width: getProportionateScreenWidth(150),
//                                     decoration: BoxDecoration(
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.black26,
//                                           offset: Offset(0.0, 0.3),
//                                           blurRadius: 6.0,
//                                         ),
//                                       ],
//                                       color: Colors.grey.shade50,
//                                       borderRadius: BorderRadius.only(
//                                         topLeft: Radius.circular(20),
//                                         bottomRight: Radius.circular(20),
//                                       ),
//                                       border: Border.all(width: 0.10),
//                                     ),
//                                     child: Column(children: [
//                                       Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           children: [
//                                             Padding(
//                                               padding: EdgeInsets.symmetric(
//                                                   horizontal:
//                                                       getProportionateScreenWidth(
//                                                           3)),
//                                               child: Text(
//                                                 location.title,
//                                                 style: GoogleFonts.oswald(
//                                                   textStyle: Theme.of(context)
//                                                       .textTheme
//                                                       .headline6,
//                                                   color: location.cardColor2,
//                                                   fontSize:
//                                                       getProportionateScreenWidth(
//                                                           13),
//                                                 ),
//                                               ),
//                                             ),
//                                             IconButton(
//                                               iconSize:
//                                                   getProportionateScreenWidth(
//                                                       13),
//                                               icon: Icon(
//                                                 Icons.shopping_cart,
//                                                 color: location.cardColor2,
//                                               ),
//                                             ),
//                                             SizedBox(
//                                                 width:
//                                                     getProportionateScreenWidth(
//                                                         15)),
//                                             Expanded(
//                                                 child: Text(
//                                               "\$${location.price}",
//                                               maxLines: 1,
//                                               style: GoogleFonts.oswald(
//                                                 textStyle: Theme.of(context)
//                                                     .textTheme
//                                                     .headline5,
//                                                 color: Colors.black38,
//                                                 fontSize:
//                                                     getProportionateScreenWidth(
//                                                         13),
//                                               ),
//                                             ))
//                                           ]),
//                                       SizedBox(
//                                           height:
//                                               getProportionateScreenWidth(10)),
//                                       Center(
//                                         child: Padding(
//                                           padding: EdgeInsets.symmetric(
//                                               horizontal: 10),
//                                           child: Text(
//                                             location.description,
//                                             textDirection: TextDirection.ltr,
//                                             textAlign: TextAlign.justify,
//                                             maxLines: 3,
//                                             style: GoogleFonts.oswald(
//                                               textStyle: Theme.of(context)
//                                                   .textTheme
//                                                   .headline2,
//                                               color: Colors.black38,
//                                               fontSize:
//                                                   getProportionateScreenWidth(
//                                                       12),
//                                             ),
//                                           ),
//                                         ),
//                                       )
//                                     ])),
//                               )
//                             ])
//                       ])
//                   // ])
//                   // ])
//                   // )
//                   )));
//     });
//   }
// }
