import 'package:consistency_seventh_son/second_page_components_parts/Clipper_and%20Others/customer_clipper.dart';
import 'package:consistency_seventh_son/second_page_components_parts/secondpage_models/comprehensive.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/cloths_folder/cloths_model/cloths_model.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/tab_bar_widget/tab_bar.dart';
import 'package:consistency_seventh_son/second_page_components_parts/top_category/top_category.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'firsthorinzontal_list_detailpage.dart';
import 'gridviewsecond_screen.dart';







Color firstColor = Color(0XFFFFACAC);
Color secondColor = Color(0XFFFFACAC);

class Categories_Seconf_Page extends StatefulWidget {
  const Categories_Seconf_Page({
    Key key,
    @required this.demoproducts,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Wear demoproducts;
  final GestureTapCallback pressOnSeeMore;


  @override
  _Categories_Seconf_PageState createState() => _Categories_Seconf_PageState();
}

class _Categories_Seconf_PageState extends State<Categories_Seconf_Page>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final mqHeight = MediaQuery.of(context).size.height;
          final mqWidth = MediaQuery.of(context).size.width;
          return Scaffold(
            backgroundColor: Colors.white,
            body: CustomScrollView(
              physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              slivers: <Widget>[
                SliverAppBar(
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Lamp",
                              style: GoogleFonts.oswald(
                                textStyle: Theme.of(context).textTheme.headline4,
                                color: Colors.red,
                                fontSize: getProportionateScreenWidth(48),
                                letterSpacing: 2.6,
                              ),
                            ),
                            TextSpan(
                              text: 'star',
                              style: GoogleFonts.oswald(
                                textStyle: Theme.of(context).textTheme.headline2,
                                color: Colors.green,
                                fontSize: getProportionateScreenWidth(38),
                                // letterSpacing: 1.0,
                              ),
                            )
                          ])),
                      // ),
                      Spacer(),
                    ],
                  ),
                  expandedHeight: 200,
                  forceElevated: true,
                  floating: true,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  snap: true,
                  centerTitle: true,
                  leading: IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/back_arrow.svg',
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  actions: <Widget>[
                    IconButton(
                      onPressed: () => {},
                      icon: SvgPicture.asset(
                        'assets/icons/add_to_cart.svg',
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () => {},
                      icon: SvgPicture.asset(
                        'assets/icons/menu.svg',
                        color: Colors.white,
                      ),
                    ),
                  ],
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    // title:
                    // title: Search_Bar(),
                    centerTitle: true,
                    background: Stack(
                      overflow: Overflow.visible,
                      clipBehavior: Clip.hardEdge,
                      fit: StackFit.expand,
                      children: <Widget>[
                        ClipPath(
                          clipper: CustomShapeClipper(),
                          child: Container(
                            height: 5,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  firstColor,
                                  secondColor,
                                ])),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      SizedBox(
                        height: 30,
                      ),
                      Stack(fit: StackFit.loose, children: [
                         HomeScreenTopPart(),
                      ]),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [],
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      SizedBox(
                        height: 30,
                      ),
                      Stack(children: [
                        Container(height: 2300, child: Tabs()

                        ),
                      ]),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Stack(
                        // overflow: Overflow.visible,
                        // clipBehavior: Clip.hardEdge,
                          fit: StackFit.loose,
                          children: [
                            Categories_Seconf_Page(),
                          ]),
                    ],
                  ),
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 4.0 / 8.0,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10,
                  ),
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) =>
                    // itemBuilder: (context, index) =>
                    Gridview_Secondpage(
                      location: locations[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => secondpage_productdetails(
                              location: locations[index],
                            ),
                          )
          ),
                     ),
                    childCount: 12,
                  ),
                ),
              ],
            ),
          );
        })

    ));
  }
}
