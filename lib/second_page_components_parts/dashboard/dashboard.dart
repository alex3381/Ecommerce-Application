import 'package:consistency_seventh_son/second_page_components_parts/secondpage_models/comprehensive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key key,
    @required this.location,
    @required this.press,
  }) : super(key: key);

  final Location location;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        // backgroundColor: Colors.white,
        child: Row(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          Feather.user,
          color: Colors.white,
        ),
        SizedBox(width: 10.0),
        Text(
          '1.5k',
          style: GoogleFonts.bigShouldersText(
              color: Colors.black87, fontSize: 20.0),
        ),
        SizedBox(width: 15.0),
        Container(width: 1.0, height: 20.0, color: Colors.grey),
        SizedBox(width: 15.0),
        //Repeat the same block as above
        Icon(Feather.star, color: Colors.white),
        SizedBox(width: 15.0),
        Text(
          '4.0',
          style: GoogleFonts.bigShouldersText(
              color: Colors.black87,
              // ColorPalette().firstSlice,
              fontSize: 20.0),
        ),
        SizedBox(width: 15.0),
        Container(
          width: 1.0,
          height: 20.0,
          color: Colors.grey,
        ),
        SizedBox(width: 15.0),
        Icon(
          Feather.anchor,
          color: Colors.white,
        ),
        SizedBox(width: 15.0),
        Text(
          'No. 1',
          style: GoogleFonts.bigShouldersText(
              color: Colors.black87, fontSize: 20.0),
        ),
      ])
    ]));
  }
}
