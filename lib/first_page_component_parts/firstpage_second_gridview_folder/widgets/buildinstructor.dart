import 'package:consistency_seventh_son/first_page_component_parts/firstpage_second_gridview_folder/model/gridview_supstitute_model.dart';
import 'package:consistency_seventh_son/first_page_component_parts/firstpage_second_gridview_folder/widgets/gridview_itembanner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        child: Stack(children: [
          Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: demoproductions.cardColor2.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  overflow: Overflow.visible,
                  fit: StackFit.loose,
                  children: [
                    Hero(
                      tag: demoproductions.id.toString(),
                      child: AspectRatio(
                        aspectRatio: 17.0 / 16.0,
                        child: Image.asset(demoproductions.image[0],
                            fit: BoxFit.cover),
                      ),
                    ),
                    Stack(
                        overflow: Overflow.visible,
                        fit: StackFit.loose,
                        clipBehavior: Clip.antiAlias,
                        children: [
                          Positioned(
                            right: 5,
                            bottom: 0,
                            left: 5,
                            child: Item_Banner(
                              demoproductions: demoproductions,
                            ),
                          ),
                        ]),
                  ],
                ),
              ))
        ]));
  }
}
