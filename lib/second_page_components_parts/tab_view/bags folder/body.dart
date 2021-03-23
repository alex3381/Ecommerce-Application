// import 'package:consistency_seventh_son/second_page_components_parts/tab_view/bags folder/bag_model/bag_models.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/bags folder/bag_model/bag_models.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/bags folder/bags_product_details.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/bags folder/item_card.dart';
import 'package:flutter/material.dart';

class Bags extends StatefulWidget {
  final Crank cooks;
  final Function press;
  const Bags({
    Key key,
    this.cooks,
    this.press,
  }) : super(key: key);
  @override
  _BagsState createState() => _BagsState();
}

class _BagsState extends State<Bags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 8),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          // physics:
          //     BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: cooks.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            childAspectRatio: 0.68,
          ),
          // padding: EdgeInsets.all(2),
          // padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
          shrinkWrap: false,
          itemBuilder: (context, index) => Bags_Item_Card(
                cooks: cooks[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bag_Product_Details(
                        cooks: cooks[index],
                      ),
                    )),
              )),
    )
            // )
            // ])
            ));
  }
}
