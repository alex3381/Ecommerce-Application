import 'package:consistency_seventh_son/card_animaion/playground.dart';
import 'package:consistency_seventh_son/second_page_components_parts/Clipper_and%20Others/customer_clipper.dart';
import 'package:consistency_seventh_son/second_page_components_parts/secondpage_models/comprehensive.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/tab_bar_widget/tab_bar.dart';
import 'package:consistency_seventh_son/second_page_components_parts/top_category/top_category.dart';
import 'package:consistency_seventh_son/second_page_components_parts/widgets/firsthorinzontal_list_detailpage.dart';
import 'package:consistency_seventh_son/second_page_components_parts/widgets/gridviewsecond_screen.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
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
          height: 1500,
          child: CustomScrollView(
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
                expandedHeight: 250,
                forceElevated: true,
                floating: true,
                backgroundColor: Colors.white,
                elevation: 0,
                snap: true,
                centerTitle: true,
                leading: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/sun.svg',
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
                      Container(height: 100, child: Catego_all()),
                    ]),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    Stack(children: [
                      Container(
                        height: 300,
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
                    Stack(children: [
                      Container(
                        height: 2300,
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
                      Container(height: 200, child: Catego_all()),
                    ]),
                  ],
                ),
              ),
              // SliverFillRemaining(
              //   child: ListView(
              //     children: [
              //       SizedBox(height: 25),
              //       Row(
              //         children: [Catego_all()],
              //       )
              //     ],
              //   ),
              // ),
              // Expanded(
              //   child: CustomScrollView(

              // ),
              // )
              // SliverList(
              //   delegate: SliverChildListDelegate(
              //     [],
              //   ),
              // ),
              //     SliverList(
              //       delegate: SliverChildListDelegate(
              //         [
              //           SizedBox(
              //             height: 30,
              //           ),
              //           Stack(children: [
              //             Container(height: 2300, child: Tabs()
              //                 // Tabs(),
              //                 ),
              //           ]),
              //         ],
              //       ),
              //     ),
              // SliverList(
              //   delegate: SliverChildListDelegate(
              //     [
              //       Stack(
              //           // overflow: Overflow.visible,
              //           // clipBehavior: Clip.hardEdge,
              //           // fit: StackFit.loose,
              //           children: [
              //             // Categories_Seconf_Page(),
              //           ]),
              //     ],
              //   ),
              // ),

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
