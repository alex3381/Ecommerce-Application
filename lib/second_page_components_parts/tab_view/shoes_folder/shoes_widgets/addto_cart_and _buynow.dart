import 'package:consistency_seventh_son/second_page_components_parts/tab_view/shoes_folder/shoes_model/shoe_model.dart';
import 'package:consistency_seventh_son/universal_models/colors_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.shoe,
  }) : super(key: key);

  final Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: shoe.colore,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: shoe.colore,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: shoe.colore,
                onPressed: () {},
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
