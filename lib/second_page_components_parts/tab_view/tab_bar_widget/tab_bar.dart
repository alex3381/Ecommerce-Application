import 'package:consistency_seventh_son/second_page_components_parts/tab_view/bags%20folder/body.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/cloths_folder/cloths_widgets/cloths_body.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/headphones_folder/headphone_widgets/headphone_body.dart';
import 'package:consistency_seventh_son/second_page_components_parts/tab_view/shoes_folder/shoes_widgets/shoe_body.dart';
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
      margin: EdgeInsets.only(
        left: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10),
            child: SizedBox(
              height: 30,
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                labelColor: Color(0xffED305A),
                controller: _tabController,
                indicator: BoxDecoration(
                  color: Color(0x55B71C1C),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                tabs: <Widget>[
                  Tab(
                    text: "WEARS",
                  ),
                  Tab(
                    text: "BAGS",
                  ),
                  Tab(
                    text: "HEADPHONES",
                  ),
                  Tab(
                    text: "SHOES",
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
