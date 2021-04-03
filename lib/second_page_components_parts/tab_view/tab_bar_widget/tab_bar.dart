import 'package:consistency_seventh_son/second_page_components_parts/tab_view/bags%20folder/body.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/cloths_folder/cloths_widgets/cloths_body.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/headphones_folder/headphone_widgets/headphone_body.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/shoes_folder/shoes_widgets/shoe_body.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

//Color PrimaryColor = Color(0xff109618);
class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(1400),
      margin: EdgeInsets.only(
        left: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: (15), left: 10),
            child: SizedBox(
              height: getProportionateScreenWidth(30),
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                labelColor: Colors.grey,
                controller: _tabController,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(getProportionateScreenWidth(20)),
                    bottomLeft:
                        Radius.circular(getProportionateScreenWidth(20)),
                  ),
                ),
                tabs: <Widget>[
                  Container(
                    width: getProportionateScreenWidth(60),
                    height: getProportionateScreenWidth(40),
                    alignment: Alignment.center,
                    child: Tab(
                      text: "WEARS",
                    ),
                  ),
                  Container(
                    width: getProportionateScreenWidth(60),
                    height: getProportionateScreenWidth(40),
                    alignment: Alignment.center,
                    child: Tab(
                      text: "BAGS",
                    ),
                  ),
                  Container(
                    width: getProportionateScreenWidth(100),
                    height: getProportionateScreenWidth(40),
                    alignment: Alignment.center,
                    child: Tab(
                      text: "HEADPHONES",
                    ),
                  ),
                  Container(
                    width: getProportionateScreenWidth(60),
                    height: getProportionateScreenWidth(40),
                    alignment: Alignment.center,
                    child: Tab(
                      text: "SHOES",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Cloths(),
                Bags(),
                Headphone(),
                Shoeee(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
