import 'package:consistency_seventh_son/first_page_component_parts/widgets/search_bar_configuration.dart';
import 'package:consistency_seventh_son/first_page_component_parts/widgets/search_bar_search_engine..dart';
import 'package:consistency_seventh_son/universal_models/fade_in_animation.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Search_Bar extends StatefulWidget {
  @override
  _Search_BarState createState() => _Search_BarState();
}

class _Search_BarState extends State<Search_Bar> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // ListView(children: [
    return Column(children: [
      Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
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
                              fit: BoxFit.cover,
                            ),
                          )),
                      FadeAnimation(
                          1.2,
                          Text(
                            'Search product',
                            style: GoogleFonts.oswald(
                              textStyle: Theme.of(context).textTheme.headline1,
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(15),
                              letterSpacing: 2.6,
                            ),
                          )),
                      FadeAnimation(
                        1.2,
                        IconButton(
                          iconSize: getProportionateScreenWidth(20),
                          icon: new Icon(Icons.settings),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: getProportionateScreenWidth(20)),

                Container(
                  height: getProportionateScreenWidth(120),
                  child: ListView.builder(
                    physics: AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(left: 40),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: shadowList,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                categories[index]['iconPath'],
                                height: getProportionateScreenWidth(45),
                                width: getProportionateScreenWidth(50),
                                scale: 1,
                              ),
                            ),
                            Divider(height: getProportionateScreenWidth(5)),
                            FadeAnimation(
                              1.2,
                              Container(
                                  margin: EdgeInsets.only(
                                      left: getProportionateScreenWidth(10)),
                                  child: Text(categories[index]['name'],
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.oswald(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline2,
                                          color: Colors.black87,
                                          fontSize: getProportionateScreenWidth(
                                              12)))),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),

                Divider(
                  color: Colors.pink[600],
                ),

                Container(
                  padding: EdgeInsets.all(getValueForScreenType<double>(
                    context: context,
                    mobile: 10,
                    tablet: 30,
                    desktop: 60,
                  )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(children: <Widget>[
                      Text(
                        'Showcasing the finest wears, a taste of luxury ',
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline2,
                          color: Colors.black87,
                          fontSize: getProportionateScreenWidth(12),
                          letterSpacing: 3.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(48),
                      ),
                      Text(
                        'Each day is a page in your fashion story',
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline2,
                          color: Colors.black87,
                          fontSize: getProportionateScreenWidth(12),
                          letterSpacing: 3.0,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      // Container(
                      //   height: 400,

                      // )
                    ]),
                  ),
                ),
//

                Divider(color: Colors.pink[600]),

                // Divider(color: Colors.pink[600]),
              ]))),
    ]);
  }
}
