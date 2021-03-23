import 'package:consistency_seventh_son/universal_models/colors_models.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BacgroundColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
        child: ResponsiveWrapper(
      maxWidth: 1200,
      minWidth: 480,
      defaultScale: true,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child:
            Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
          Flexible(
            child: Container(
              height: getProportionateScreenWidth(1100),
              decoration: BoxDecoration(
                  color: MyColors.lightBlue,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                  )),
            ),
            flex: 2,
          ),
          Flexible(
            child: Container(
              height: getProportionateScreenWidth(1100),
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
      ),
      breakpoints: [
        ResponsiveBreakpoint.resize(600, name: MOBILE),
        ResponsiveBreakpoint.autoScale(800, name: TABLET),
        ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
      ],
    ));
  }
}
