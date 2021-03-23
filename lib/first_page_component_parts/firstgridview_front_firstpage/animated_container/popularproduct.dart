import 'package:consistency_seventh_son/first_page_component_parts/firstgridview_front_firstpage/animated_container/productcard.dart';
import 'package:consistency_seventh_son/first_page_component_parts/firstgridview_front_firstpage/firstgridview_firstpage_model/first_gridview.model.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
    @required this.racoon,
    this.press,
  }) : super(key: key);

  final Racoon racoon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProductImages(racoon: racoon),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
