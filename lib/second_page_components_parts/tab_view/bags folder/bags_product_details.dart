import 'package:consistency_seventh_son/second_page_components_parts/tab_view/bags folder/bag_model/bag_models.dart';
import 'package:flutter/material.dart';

class Bag_Product_Details extends StatelessWidget {
  final Crank cooks;
  final Function press;
  const Bag_Product_Details ({
    Key key,
    this.cooks,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        color: Colors.yellow,
      ),
    );
  }
}
