import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/gridview_supstitute_model.dart';

class Item_Banner extends StatelessWidget {
  const Item_Banner({
    Key key,
    @required this.demoproductions,
    @required this.press,
  }) : super(key: key);

  final Production demoproductions;
  final Function press;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
        borderRadius: BorderRadius.circular(10.0),
        elevation: 7.0,
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: Expanded(
                        child: Text(
                          demoproductions.title,
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.headline6,
                            color: demoproductions.color[0],
                            fontSize: getProportionateScreenWidth(13),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        iconSize: getProportionateScreenWidth(13),
                        icon: Icon(
                          Icons.shopping_cart,
                          color: demoproductions.color[0],
                        ),
                      ),
                    ),
                    Text(
                      "\$${demoproductions.price}",
                      maxLines: 1,
                      style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline1,
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(13),
                      ),
                    )
                  ]),
              Row(children: [
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        demoproductions.description,
                        maxLines: 2,
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline6,
                          color: Colors.grey,
                          fontSize: getProportionateScreenWidth(10),
                        ),
                      )),
                )
              ]),
            ])));
  }
}
