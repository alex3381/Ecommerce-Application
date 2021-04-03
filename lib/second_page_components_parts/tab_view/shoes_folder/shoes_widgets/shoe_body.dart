import 'package:consistency_seventh_son/second_page_components_parts/tab_view/shoes_folder/shoes_model/shoe_model.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/shoes_folder/shoes_widgets/shoe_itemcard.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/shoes_folder/shoes_widgets/shoe_product_detail_page_shoe.dart';
import 'package:flutter/material.dart';

class Shoeee extends StatelessWidget {
  final Shoe shoe;
  final Function press;

  const Shoeee({
    Key key,
    @required this.shoe,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body:
        // ListView(children: <Widget>[
        body: Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 8),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: shoes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            childAspectRatio: 0.90,
          ),
          // padding: EdgeInsets.all(2),
          // padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
          shrinkWrap: false,
          itemBuilder: (context, index) => Mainone(
                shoe: shoes[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Initial_Detail(
                        shoe: shoes[index],
                      ),
                    )),
              )),
    ));
  }
}
