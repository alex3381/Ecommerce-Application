import 'package:consistency_seventh_son/first_page_component_parts/widgets/search_bar_search_engine..dart';
import 'package:consistency_seventh_son/universal_models/fade_in_animation.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Searches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  Container(
                    height: getProportionateScreenWidth(40),
                    width: getProportionateScreenWidth(600),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {
                              showSearch(
                                  context: context, delegate: DataSearch());
                            },
                            child: FadeAnimation(
                              1.2,
                              Image.asset(
                                "assets/icons/Webp.png",
                                height: getProportionateScreenWidth(35),
                                width: getProportionateScreenWidth(20),
                                fit: BoxFit.contain,
                              ),
                            )),
                        Spacer(),
                        FadeAnimation(
                            1.2,
                            Text(
                              'Search product',
                              style: GoogleFonts.oswald(
                                textStyle:
                                    Theme.of(context).textTheme.headline1,
                                color: Colors.pink,
                                fontSize: getProportionateScreenWidth(12),
                                letterSpacing: 1.6,
                              ),
                            )),
                        Spacer(),
                        FadeAnimation(
                          1.2,
                          IconButton(
                            // iconSize: getProportionateScreenWidth(25),
                            icon: new Icon(
                              Icons.settings,
                              size: getProportionateScreenWidth(15),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]))));
  }
}
