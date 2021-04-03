import 'package:consistency_seventh_son/second_page_components_parts/tab_view/headphones_folder/headphone_model/headphone_model.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/headphones_folder/headphone_widgets/headphone_itemcard.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/headphones_folder/headphone_widgets/headphone_product_detail_page.dart';
import 'package:flutter/material.dart';

class Headphone extends StatelessWidget {
  final HeadPhone demoheadphone;
  final Function press;
  const Headphone({
    Key key,
    this.demoheadphone,
    this.press,
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
          itemCount: demoheadphones.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            childAspectRatio: 0.90,
          ),
          // padding: EdgeInsets.all(2),
          // padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
          shrinkWrap: false,
          itemBuilder: (context, index) => Frank(
                demoheadphones: demoheadphones[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreens(
                        demoheadphone: demoheadphones[index],
                      ),
                    )),
              )),
    )
        // )
        // ])
        // ])
        );
  }
}
