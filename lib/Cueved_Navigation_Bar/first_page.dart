import 'package:consistency_seventh_son/first_page_component_parts/firstgridview_front_firstpage/firstgridview_firstpage_model/first_gridview.model.dart';
import 'package:consistency_seventh_son/first_page_component_parts/firstgridview_front_firstpage/firstpage_gridview_body.dart';
import 'package:consistency_seventh_son/first_page_component_parts/firstgridview_front_firstpage/productdetail_screen/firstgridview_product_detail_screen.dart';
import 'package:consistency_seventh_son/first_page_component_parts/firstpage_second_gridview_folder/firstpage_detailpage_gridview_components/firstpage_product_detail_page.dart';
import 'package:consistency_seventh_son/first_page_component_parts/firstpage_second_gridview_folder/model/gridview_supstitute_model.dart';
import 'package:consistency_seventh_son/first_page_component_parts/firstpage_second_gridview_folder/widgets/buildinstructor.dart';
import 'package:consistency_seventh_son/first_page_component_parts/widgets/background_colors.dart';
import 'package:consistency_seventh_son/first_page_component_parts/widgets/carousel_one.dart';
import 'package:consistency_seventh_son/first_page_component_parts/widgets/homepage_header_design.dart';
import 'package:consistency_seventh_son/first_page_component_parts/widgets/search_bar.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:consistency_seventh_son/universal_wigdet_folder/categories_all/categories_all.dart';
import 'package:flutter/material.dart';

class Firsthome_Page extends StatelessWidget {
  const Firsthome_Page({
    Key key,
    @required this.demoproductons,
    @required this.racoon,
    @required this.press,
  }) : super(key: key);

  final Production demoproductons;
  final Racoon racoon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  HomePage_Header_Design(),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Stack(children: [
                    BacgroundColor(),
                    Search_Bar(),
                    Positioned(
                      top: 10,
                      left: 0,
                      right: 0,

                      child: Carousel_plus_first_horinzontallistview(),

                      // Catego_all(),
                    )
                  ]),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Stack(children: [
                    Catego_all(),
                  ]),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 3.0 / 2.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) =>
                    // itemBuilder: (context, index) =>
                    FirstPage_GridView(
                  racoons: racoons[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetail_Screen(
                          racoon: racoons[index],
                        ),
                      )),
                ),
                childCount: 7,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Stack(children: [
                    Catego_all(),
                  ]),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 8.0 / 9.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) =>
                    // itemBuilder: (context, index) =>
                    buildInstructorGrid(
                  demoproductions: demoproductions[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sliverlist_Productdetail(
                          demoproductions: demoproductions[index],
                        ),
                      )),
                ),
                childCount: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
