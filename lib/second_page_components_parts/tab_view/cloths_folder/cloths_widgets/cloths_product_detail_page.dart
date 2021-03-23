
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/cloths_folder/cloths_model/cloths_model.dart';
import 'package:consistency_seventh_son/second_page_components_parts/widgets/categories_second_page.dart';
import 'package:consistency_seventh_son/universal_models/colors_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Detail_views extends StatelessWidget {
  final Wear demoproducts;

  const Detail_views({Key key, this.demoproducts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: demoproducts.cardColor2,
      appBar: buildAppBar(context),
      body: Categories_Seconf_Page(demoproducts: demoproducts),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: demoproducts.cardColor2,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
