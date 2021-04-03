import 'package:consistency_seventh_son/card_animaion/playground.dart';
import 'package:consistency_seventh_son/first_page_component_parts/widgets/background_colors.dart';
import 'package:consistency_seventh_son/second_page_components_parts/Clipper_and%20Others/customer_clipper.dart';
import 'package:consistency_seventh_son/second_page_components_parts/secondpage_models/comprehensive.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/backgroundcolor_tabview/tabbar_tabview_color_background.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/tab_bar_widget/tab_bar.dart';
import 'package:consistency_seventh_son/second_page_components_parts/top_category/top_category.dart';
import 'package:consistency_seventh_son/second_page_components_parts/widgets/firsthorinzontal_list_detailpage.dart';
import 'package:consistency_seventh_son/second_page_components_parts/widgets/gridviewsecond_screen.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:consistency_seventh_son/universal_wigdet_folder/carousel/carousel.dart';
import 'package:consistency_seventh_son/universal_wigdet_folder/categories_all/categories_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

Color firstColor = Color(0XFFFFACAC);
Color secondColor = Color(0XFFFFACAC);

class Secondpage extends StatefulWidget {
  const Secondpage({
    Key key,
    @required this.location,
    @required this.press,
  }) : super(key: key);

  final Location location;

  final Function press;

  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: getProportionateScreenWidth(1800),
          child: CustomScrollView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            slivers: <Widget>[
              SliverAppBar(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Lamp",
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline4,
                          color: Color(0XFFFF7043),
                          fontSize: getProportionateScreenWidth(38),
                          letterSpacing: 1.6,
                        ),
                      ),
                      TextSpan(
                        text: 'star',
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline2,
                          color: Colors.green,
                          fontSize: getProportionateScreenWidth(25),
                        ),
                      )
                    ])),
                    Spacer(),
                  ],
                ),
                expandedHeight: 250,
                forceElevated: true,
                floating: true,
                backgroundColor: Colors.white,
                elevation: 0,
                snap: true,
                centerTitle: true,
                leading: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: ClipOval(
                    child: Material(
                      color: Colors.transparent, // button color
                      child: InkWell(
                        splashColor: Colors.red, // inkwell color
                        child: SizedBox(
                          width: 35,
                          height: 25,
                          child: IconButton(
                              icon: SvgPicture.asset(
                                'assets/icons/back_arrow.svg',
                                color: Colors.deepOrange,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ),
                      ),
                    ),
                  ),
                ),
                actions: <Widget>[
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    child: ClipOval(
                        child: Material(
                            color: Colors.transparent, // button color
                            child: InkWell(
                              splashColor: Colors.red, // inkwell color
                              child: SizedBox(
                                width: 35,
                                height: 25,
                                child: IconButton(
                                  onPressed: () => {},
                                  icon: SvgPicture.asset(
                                    'assets/icons/add_to_cart.svg',
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Colors.transparent, // button color
                          child: InkWell(
                            splashColor: Colors.red, // inkwell color
                            child: SizedBox(
                              width: 35,
                              height: 35,
                              child: IconButton(
                                onPressed: () => {},
                                icon: SvgPicture.asset(
                                  'assets/icons/menu.svg',
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: HomeScreenTopPart(),
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
                  <Widget>[
                    Stack(children: [
                      // SizedBox(height: 90),
                      Container(
                        height: getProportionateScreenWidth(170.0),
                        width: getProportionateScreenWidth(400.0),
                        child: Carousel(),
                      ),
                    ]),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    Stack(children: [
                      BacgroundColor(),
                      SizedBox(height: 300),
                      // Container(height: 10, child:
                      Catego_all(),
                      Container(
                        height: getProportionateScreenWidth(400),
                        child: PlaygroundPage(),
                      ),
                    ]),
                  ],
                ),
              ),
              // PlaygroundPage()
              SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    Stack(
                        overflow: Overflow.visible,
                        clipBehavior: Clip.hardEdge,
                        // fit: StackFit.expand,
                        children: [
                          Tabview_BacgroundColor(),
                          Container(
                            height: 1800,
                            child: Tabs(),
                          ),
                        ]),
                  ],
                ),
              ),

              SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    Stack(children: [
                      Catego_all(),
                    ]),
                  ],
                ),
              ),
              // SliverFillRemaining(

              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // childAspectRatio: 7.0 / 0.9,
                  childAspectRatio: 0.90,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20,
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
                        )),
                  ),
                  childCount: 12,
                ),
              ),
            ],
          ),
        ));
    // }),
    // ));
  }
}
