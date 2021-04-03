import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color firstColor = Color(0XFFFFA726);
// (0XFFFFACAC);
Color secondColor = Color(0xFFFF9E80);
// (0XFFFFACAC);

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  List<IconData> _icons = [
    FontAwesomeIcons.landmark,
    FontAwesomeIcons.globe,
    FontAwesomeIcons.envelope,
    FontAwesomeIcons.chartPie
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      child: Container(
        height: 30.0,
        width: 40.0,
        decoration: BoxDecoration(
          color: Color(0xFFFFC5C5),
          // (0x99FFFFFF),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Icon(
          _icons[index],
          size: 15.0,
          color: Colors.red,
          // Color(0XFFFFACAC),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      SizedBox(height: 60),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _icons
            .asMap()
            .entries
            .map((MapEntry map) => _buildIcon(map.key))
            .toList(),
      ),
    ]);
  }
}
