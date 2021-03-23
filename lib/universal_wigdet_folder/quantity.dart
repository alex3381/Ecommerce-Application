import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class Quantity_Size extends StatefulWidget {
  @override
  _Quantity_SizeState createState() => _Quantity_SizeState();
}

class _Quantity_SizeState extends State<Quantity_Size> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item(
        '19',
        Icon(
          FontAwesomeIcons.anchor,
          color: const Color(0xFF167F67),
        )),
    const Item(
        '23',
        Icon(
          Icons.flag,
          color: const Color(0xFF167F67),
        )),
    const Item(
        '27',
        Icon(
          FontAwesomeIcons.sitemap,
          color: const Color(0xFF167F67),
        )),
    const Item(
        '30',
        Icon(
          FontAwesomeIcons.asterisk,
          color: const Color(0xFF167F67),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        height: 50,
        child: Row(children: [
          Center(
            child: new Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Colors.white,
                // blue.shade200,
              ),
              child: DropdownButton<Item>(
                isExpanded: false,
                hint: Text(
                  "Select Quantity",
                  style: GoogleFonts.oswald(
                    textStyle: TextStyle(
                      color: Colors.white,
                      letterSpacing: .5,
                      fontSize: getProportionateScreenWidth(15),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                value: selectedUser,
                onChanged: (Item Value) {
                  setState(() {
                    selectedUser = Value;
                  });
                },
                items: users.map((Item user) {
                  return DropdownMenuItem<Item>(
                    value: user,
                    child: Row(
                      children: <Widget>[
                        user.icon,
                        SizedBox(
                          width: getProportionateScreenWidth(20),
                        ),
                        Text(
                          user.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          )
        ]));
  }
}
