import 'package:consistency_seventh_son/second_page_components_parts/tab_view/headphones_folder/headphone_model/headphone_model.dart';
import 'package:consistency_seventh_son/universal_models/colors_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.demoheadphones,
  }) : super(key: key);

  final HeadPhone demoheadphones;

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
                color: demoheadphones.color[0],
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: demoheadphones.color[0],
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
                color: demoheadphones.color[0],
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
