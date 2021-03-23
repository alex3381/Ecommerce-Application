import "package:flutter/material.dart";


Color c = const Color.fromRGBO(255, 172, 172, 0.0);
// 66, 165, 245, 1.0);

const Color yellow = Color(0xFFFFC5C5);
const Color mediumYellow = Color(0XFFFFACAC);
const Color darkYellow = Color(0XFFFFACAC);
const Color transparentYellow = Color.fromRGBO(255, 172, 172, 0.09);
// (255, 172, 172, 0.09);
// 255, 197, 190, 0.8);
//253, 184, 70, 0.9);
const Color darkGrey = Color(0xff202020);

const LinearGradient mainButton = LinearGradient(colors: [
  Color.fromRGBO(236, 60, 3, 1),
  Color.fromRGBO(234, 60, 3, 1),
  Color.fromRGBO(216, 78, 16, 1),
], begin: FractionalOffset.topCenter, end: FractionalOffset.bottomCenter);

const List<BoxShadow> shadow = [
  BoxShadow(color: Colors.black12, offset: Offset(0, 3), blurRadius: 6)
];

screenAwareSize(int size, BuildContext context) {
  double baseHeight = 640.0;
  return size * MediaQuery.of(context).size.height / baseHeight;
}

class MyColors {
  static const darkBlue = Color(0xFFFFC5C5),
      lightBlue = Color(0XFFFFACAC),
      accentBlue = Color(0xff37e3d5);

  Color mainColor = Color(0xFF455668);
  Color menuColor = Color(0xFFF2F2F2);
  Color secondColor = Color(0xFFd5eaea);
  Color textColor = Color(0xFFF4F4F4);
  Color manColor = Color(0XFFF6F6F6);
  Color maanColor = Color(0XFFB2B2B2);
}

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);
const kDefaultPaddin = 20.0;

const kPrimaryColor = Color(0xFF0C9869);
const k1TextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);

const double kDefaultPadding = 20.0;

const kprimaryColor = Color(0xFF0C9869);
const KTextColor = Color(0xFF3C4046);
const KBackgroundColor = Color(0xFFF9f8Fd);
const double KDefaultPadding = 20.0;

const kPrimarycolor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextcolor = Color(0xFF757575);
