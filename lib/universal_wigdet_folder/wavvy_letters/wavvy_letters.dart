import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';

class Wavvy_Lettars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: getProportionateScreenWidth(300.0)),
      Container(
        height: getProportionateScreenWidth(60.0),
        child: WavyAnimatedTextKit(
          textStyle: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(17),
            fontWeight: FontWeight.bold,
            fontFamily: 'Horizon',
            letterSpacing: 1.5,
          ),
          text: [
            'Showcasing the finest wears.',
            "A taste of luxury",
          ],
          isRepeatingAnimation: true,
        ),
      ),
    ]);
  }
}
