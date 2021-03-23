import 'package:consistency_seventh_son/universal_models/colors_models.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'first_page.dart';
import 'fourth_page.dart';
import 'second_page.dart';
import 'third_pages.dart';

// void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  final Firsthome_Page _secondpage = Firsthome_Page();
  final Secondpage _all_products = Secondpage();
  final Back_Home _categori = Back_Home();
  final Settings _changes = Settings();

  Widget _showpage = Firsthome_Page();

  Widget _pagechooser(int page) {
    switch (page) {
      case 0:
        return _secondpage;
        break;
      case 1:
        return _all_products;
      case 2:
        return _categori;
        break;
      case 3:
        return _changes;
        break;
      default:
        return Container(
            child: Center(
          child: Text("no page found by page chooser"),
        ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.settings, size: 30),
          ],
          color: MyColors.lightBlue,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOutBack,
          animationDuration: Duration(milliseconds: 600),
          height: 60.0,
          onTap: (int tappedIndex) {
            setState(() {
              _showpage = _pagechooser(tappedIndex);
            });
          },
        ),
        body: Container(
            child: Center(
          child: _showpage,
        )));
  }
}
