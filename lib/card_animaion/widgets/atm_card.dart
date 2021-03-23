import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ATMCARD extends StatefulWidget {
  final ATMCardAnimationDetails animationDetails;
  final ATMCardUIDetails atmCardUIDetails;
  final numOfReviews;

  const ATMCARD({
    Key key,
    @required this.animationDetails,
    @required this.atmCardUIDetails,
    this.numOfReviews,
  }) : super(key: key);

  @override
  _ATMCARDState createState() => _ATMCARDState();
}

class _ATMCARDState extends State<ATMCARD> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var rating = 3.0;

    return Transform.translate(
      offset: Offset(
        (widget.animationDetails.index * -20.0),
        widget.animationDetails.move * 30.0,
      ),
      child: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.0008)
            ..rotateY(widget.animationDetails.rotateY ?? 0.5)
            ..rotateX(widget.animationDetails.rotateX ?? -0.8)
            ..rotateZ(0.1)
            ..translate(20.0, widget.animationDetails.translateY ?? 0.0, 0.0),
          child: Stack(
            children: [
              Container(
                width: 450,
                height: 280,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.pink, //                   <--- border color
                    width: .5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [Colors.grey[300], Colors.white],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                foregroundDecoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage(
                      widget.atmCardUIDetails.image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 50,
                right: 15,
                // alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      widget.atmCardUIDetails.title,
                      maxLines: 1,
                      style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline2,
                        color: Colors.lightGreenAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    )),
              )
            ],
          )),
    );
  }
}

class ImageCardAnimationDetails {
  final double rotateX, rotateY, translateY, int, index, move;

  ImageCardAnimationDetails(
      {this.rotateX,
      this.rotateY,
      this.translateY,
      this.int,
      this.index,
      this.move});
}
//     return Transform.translate(
//         offset: Offset(
//             (widget.animationDetails.index *
//                 getProportionateScreenWidth(-20.0)),
//             widget.animationDetails.move * getProportionateScreenWidth(30.0)),
//         child: Transform(
//           transform: Matrix4.identity()
//             ..setEntry(3, 2, 0.0008)
//             ..rotateY(widget.animationDetails.rotateY ?? 0.5)
//             ..rotateX(widget.animationDetails.rotateX ?? -0.8)
//             ..rotateZ(0.1)
//             ..translate(50.0, widget.animationDetails.translateY ?? 0.0, 0.0),
//
//           child: Stack(children: <Widget>[
//             Container(
//               width: getProportionateScreenWidth(420),
//               height: getProportionateScreenWidth(240),
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: Colors.black, //                   <--- border color
//                   width: .5,
//                 ),
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 3,
//                     blurRadius: 3,
//                     offset: Offset(0, 1), // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: Image.asset(
//                 widget.atmCardUIDetails.image,
//                 fit: BoxFit.contain,
//                 // height: getProportionateScreenWidth(90),
//               ),
//             ),
//             Positioned(
//               top: getProportionateScreenWidth(0.0),
//               left: getProportionateScreenWidth(27),
//               right: getProportionateScreenWidth(10.0),
//               child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//                 Container(
//                   height: getProportionateScreenWidth(50.0),
//                   width: getProportionateScreenWidth(110.0),
//                   alignment: Alignment.centerRight,
//                   child: SmoothStarRating(
//                     rating: rating,
//                     isReadOnly: false,
//                     size: getProportionateScreenWidth(30),
//                     filledIconData: Icons.star,
//                     halfFilledIconData: Icons.star_half,
//                     defaultIconData: Icons.star_border,
//                     starCount: 3,
//                     allowHalfRating: true,
//                     spacing: 2.0,
//                     color: Colors.orange,
//                     onRated: (value) {
//                       print("rating value -> $value");
//                     },
//                   ),
//                 ),
//               ]),
//             ),
//             Positioned(
//               bottom: getProportionateScreenWidth(0.0),
//               // left: getProportionateScreenWidth(15.0),
//               right: getProportionateScreenWidth(10.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: getProportionateScreenWidth(50.0),
//                     width: getProportionateScreenWidth(170.0),
//                     alignment: Alignment.centerRight,
//                     child: TextButton(
//                       onPressed: () {},
//                       style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.resolveWith<Color>(
//                           (Set<MaterialState> states) {
//                             if (states.contains(MaterialState.pressed))
//                               return Theme.of(context)
//                                   .colorScheme
//                                   .primary
//                                   .withOpacity(0.5);
//                             return Colors.transparent;
//                           },
//                         ),
//                       ),
//                       child: Row(children: <Widget>[
//                         Padding(
//                             padding:
//                                 const EdgeInsets.only(right: 9.5, top: 1.6),
//                             child: Text(
//                               "\$${widget.atmCardUIDetails.price ?? "Mask"} ",
//                               maxLines: 1,
//                               style: GoogleFonts.oswald(
//                                 textStyle:
//                                     Theme.of(context).textTheme.headline2,
//                                 color: Colors.grey[600],
//                                 fontSize: 20,
//                                 letterSpacing: 1.0,
//                               ),
//                             )),
//                         SizedBox(
//                           width: getProportionateScreenWidth(10),
//                         ),
//                         Expanded(
//                             child: Text(
//                           "${widget.atmCardUIDetails.title ?? "Mask"}",
//                           style: GoogleFonts.oswald(
//                             textStyle: Theme.of(context).textTheme.headline2,
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w500,
//                             letterSpacing: 1.0,
//                           ),
//                         ))
//                       ]),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ]),
//           // )
//         ));
//   }
// }

//     return Transform.translate(
//       offset: Offset(
//         (widget.animationDetails.index * -20.0),
//         widget.animationDetails.move * 30.0,
//       ),
//       child: Transform(
//         transform: Matrix4.identity()
//           ..setEntry(3, 2, 0.0008)
//           ..rotateY(widget.animationDetails.rotateY ?? 0.5)
//           ..rotateX(widget.animationDetails.rotateX ?? -0.8)
//           ..rotateZ(0.1)
//           ..translate(20.0, widget.animationDetails.translateY ?? 0.0, 0.0),
//         child: Container(
//           width: 450,
//           height: 280,
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SmoothStarRating(
//                 rating: rating,
//                 isReadOnly: false,
//                 size: getProportionateScreenWidth(20),
//                 filledIconData: Icons.star,
//                 halfFilledIconData: Icons.star_half,
//                 defaultIconData: Icons.star_border,
//                 starCount: 3,
//                 allowHalfRating: true,
//                 spacing: 2.0,
//                 color: Colors.orange,
//                 onRated: (value) {
//                   print("rating value -> $value");
//                 },
//               ),
//               // Icon(
//               //   widget.atmCardUIDetails.cardIcon ?? Icons.masks_rounded,
//               //   color: Colors.white,
//               //   size: 30,
//               // ),
//               Transform.translate(
//                 offset: Offset(0, -2),
//
//                 child: Image.asset(
//                   widget.atmCardUIDetails.image,
//                   fit: BoxFit.contain,
//                   height: getProportionateScreenWidth(90),
//                   width: getProportionateScreenWidth(90),
//                 ),
//                 // child: Text(
//                 //   "${widget.atmCardUIDetails.cardName ?? "Mask"} Card",
//                 //   style: TextStyle(
//                 //     color: Colors.white,
//                 //     fontWeight: FontWeight.bold,
//                 //   ),
//                 // ),
//               ),
//               Spacer(),
//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //   children: List.generate(
//               //     4,
//               //     (index) {
//               //       return Row(children: <Widget>[
//               //         // Padding(
//               //         //     padding: const EdgeInsets.only(right: 6.5, top: 1.6),
//               //         Text(
//               //           "\$${widget.atmCardUIDetails.price ?? "Mask"} ",
//               //           maxLines: 1,
//               //           style: GoogleFonts.oswald(
//               //             textStyle: Theme.of(context).textTheme.headline1,
//               //             color: Colors.grey[600],
//               //             fontSize: 12,
//               //             letterSpacing: 1.0,
//               //           ),
//               //         ),
//               //         SizedBox(
//               //           width: getProportionateScreenWidth(10),
//               //         ),
//               //         Expanded(
//               //             child: Text(
//               //           "${widget.atmCardUIDetails.title ?? "Mask"}",
//               //           style: GoogleFonts.oswald(
//               //             textStyle: Theme.of(context).textTheme.headline2,
//               //             color: Colors.black,
//               //             fontSize: 12,
//               //             fontWeight: FontWeight.w500,
//               //             letterSpacing: 1.0,
//               //           ),
//               //         ))
//               //       ]);
//               //     },
//               //   ),
//               // ),
//
//               Spacer(),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "VALID\nTRU",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 10,
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                             Text(
//                               "10/21",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 17,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             )
//                           ],
//                         ),
//                         SizedBox(height: 10),
//                         // Text(
//                         //   widget.atmCardUIDetails.cardOwner?.toUpperCase() ??
//                         //       "JOSTEVE ADEKANBI",
//                         //   style: TextStyle(
//                         //     color: Colors.white,
//                         //   ),
//                         // )
//                       ],
//                     ),
//                   ),
//                   Image.asset(
//                     "assets/images/mastercardlogo.png",
//                     height: 30,
//                   )
//                 ],
//               ),
//             ],
//           ),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             gradient: LinearGradient(
//               colors: widget.atmCardUIDetails.gradientColors,
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.2),
//                 blurRadius: 1.0,
//                 spreadRadius: 1.0,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class ATMCardAnimationDetails {
  final double rotateX, rotateY, translateY, int, index, move;

  ATMCardAnimationDetails(
      {this.rotateX,
      this.rotateY,
      this.translateY,
      this.int,
      this.index,
      this.move});
}

class ATMCardUIDetails {
  final List<Color> gradientColors;
  final int price;
  final String image;
  final String title;
  final String validThru;
  final double rating;
  final bool isFavourite, isPopular;

  ATMCardUIDetails({
    this.gradientColors,
    this.price,
    @required this.image,
    this.title,
    this.validThru,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
  });
}
