import 'package:consistency_seventh_son/universal_models/colors_models.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';

class BacgroundColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
        Flexible(
          child: Container(
            height: getProportionateScreenWidth(900),
            decoration: BoxDecoration(
                // gradient: LinearGradient(
                //

                color: MyColors.lightBlue,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                )),
          ),
          flex: 2,
        ),
        Flexible(
          child: Container(
            height: getProportionateScreenWidth(900),
            // 1100
            decoration: BoxDecoration(
                color: MyColors.darkBlue,
                borderRadius: new BorderRadius.only(
                  // topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                )),
          ),
          flex: 1,
        ),
      ]),
    );
  }
}
