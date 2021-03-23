import 'package:consistency_seventh_son/second_page_components_parts/tab_view/shoes_folder/shoes_model/shoe_model.dart';
import 'package:consistency_seventh_son/universal_models/colors_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'body.dart';

class Initial_Detail extends StatelessWidget {
  final Shoe shoe;

  const Initial_Detail({Key key, this.shoe}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // each product have a color
        backgroundColor: shoe.colore,
        appBar: buildAppBar(context),
        body: Detailinfo(
          shoe: shoe,
        ));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: shoe.colore,
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
