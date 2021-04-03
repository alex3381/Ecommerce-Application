import 'package:consistency_seventh_son/first_page_component_parts/firstpage_second_gridview_folder/model/gridview_supstitute_model.dart';
// import 'package:consistency_seventh_son/first_page_component_parts/firstpage_second_gridview_folder/widgets/gridview_itembannerrs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gridview_itembanner.dart';

class buildInstructorGrid extends StatelessWidget {
  const buildInstructorGrid({
    Key key,
    @required this.demoproductions,
    @required this.press,
  }) : super(key: key);

  final Production demoproductions;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Stack(
              overflow: Overflow.visible,
              clipBehavior: Clip.hardEdge,
              fit: StackFit.passthrough,
              children: [
                Material(
                  elevation: 7,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFC5C5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                              2.0, 2.0), // shadow direction: bottom right
                        )
                      ],
                    ),
                    child: Hero(
                      tag: demoproductions.id.toString(),
                      child: AspectRatio(
                        aspectRatio: 10.0 / 15.0,
                        child: Image.asset(demoproductions.image[0],
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: -30,
                  left: 5,
                  child: Item_Banner(
                    demoproductions: demoproductions,
                  ),
                ),
              ]),
        ));
    // );
  }
}
