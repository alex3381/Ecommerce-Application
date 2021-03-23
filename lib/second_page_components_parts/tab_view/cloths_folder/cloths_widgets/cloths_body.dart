import 'package:consistency_seventh_son/second_page_components_parts/tab_view/cloths_folder/cloths_model/cloths_model.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/cloths_folder/cloths_widgets/cloths_itemcard.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/cloths_folder/cloths_widgets/cloths_product_detail_page.dart';
import 'package:flutter/material.dart';

class Cloths extends StatelessWidget {
  const Cloths({
    Key key,
    @required this.wear,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Wear wear;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body:
        // ListView(children: <Widget>[
        body: Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 8),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: demoproducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            childAspectRatio: 0.68,
          ),
          // padding: EdgeInsets.all(2),
          // padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
          shrinkWrap: false,
          itemBuilder: (context, index) => Alexis(
                demoproducts: demoproducts[index],
                pressOnSeeMore: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detail_views(
                        demoproducts: demoproducts[index],
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
