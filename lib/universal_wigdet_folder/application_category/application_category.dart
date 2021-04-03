import 'package:consistency_seventh_son/first_page_component_parts/widgets/search_bar_configuration.dart';
import 'package:consistency_seventh_son/universal_models/fade_in_animation.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(children: [
      SizedBox(height: getProportionateScreenWidth(20)),
      Container(
        height: getProportionateScreenWidth(100),
        child: ListView.builder(
          physics:
              AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      categories[index]['iconPath'],
                      height: getProportionateScreenWidth(35),
                      width: getProportionateScreenWidth(35),
                      scale: 1,
                    ),
                  ),
                  Divider(height: getProportionateScreenWidth(5)),
                  FadeAnimation(
                    1.2,
                    Container(
                        margin: EdgeInsets.only(
                            left: getProportionateScreenWidth(28)),
                        child: Text(categories[index]['name'],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.oswald(
                              textStyle: Theme.of(context).textTheme.headline6,
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(12),
                              letterSpacing: 1.0,
                            ))),
                  )
                ],
              ),
            );
          },
        ),
      ),
    ]);
  }
}
