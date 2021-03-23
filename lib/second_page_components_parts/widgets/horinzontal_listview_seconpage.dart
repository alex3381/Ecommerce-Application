import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class First_Horinzontal_View extends StatefulWidget {
  @override
  _First_Horinzontal_ViewState createState() => _First_Horinzontal_ViewState();
}

class _First_Horinzontal_ViewState extends State<First_Horinzontal_View> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Categories",
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline3,
                          color: Colors.black87,
                          fontSize: 20)),
                  Text("All",
                      style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline3,
                        color: Colors.deepOrange,
                        fontSize: 20,
                      )),
                ]),
          ),
          SizedBox(height: 20.0),
          Container(
              height: 170,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                makeCategory(image: "assets/images/img_3.jpg", title: 'Adidas'),
                makeCategory(
                    image: "assets/images/glasses.jpg", title: 'Speck'),
                makeCategory(image: "assets/images/bag_2.png", title: 'Bags'),
                makeCategory(
                    image: "assets/images/slide.jfif", title: 'Lepuor'),
                makeCategory(
                    image: "assets/images/elice-moore.jpg",
                    title: 'Elice-Moore'),
              ])),
        ]));
  }

  Widget makeCategory({image, title}) {
    return AspectRatio(
        aspectRatio: 2 / 1.7,
        child: Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.0),
              ])),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(title,
                    style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline3,
                        color: Colors.white,
                        fontSize: 20)),
              ),
            )));
  }
}
