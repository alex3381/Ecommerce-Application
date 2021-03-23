
import 'package:consistency_seventh_son/second_page_components_parts/Clipper_and%20Others/customer_clipper.dart';
import 'package:consistency_seventh_son/second_page_components_parts/dashboard/dashboard.dart';
import 'package:consistency_seventh_son/second_page_components_parts/secondpage_models/comprehensive.dart';
import 'package:consistency_seventh_son/second_page_components_parts/widgets/product_detailsdescription_andotherwidgets.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import 'detailpage_positionedwidget.dart';

class secondpage_productdetails extends StatelessWidget {
  const secondpage_productdetails({
    Key key,
    @required this.location,
    @required this.press,
  }) : super(key: key);

  final Location location;
  final Function press;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: location.cardColor2,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            forceElevated: true,
            floating: true,
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

            expandedHeight: 230,
            // pinned: true,
            flexibleSpace: FlexibleSpaceBar(
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
                      decoration: BoxDecoration(color: location.cardColor2),
                    ),
                  ),
                ],
              ),
            ),

            title: Text.rich(TextSpan(children: [
              TextSpan(
                text: "Lamp",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
              TextSpan(
                text: 'star',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ])),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                  overflow: Overflow.visible,
                  clipBehavior: Clip.hardEdge,
                  fit: StackFit.passthrough,
                  children: [
                    Container(
                      height: getProportionateScreenWidth(400.0),
                      width: getProportionateScreenWidth(400.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Hero(
                        tag: location.id.toString(),
                        child: AspectRatio(
                          aspectRatio: 10.0 / 10.0,
                          child: Image.asset(
                            location.image[0],
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    // ),
                    Secondedetatail_Positioned(location: location),
                    SizedBox(height: getProportionateScreenWidth(100.0)),
                  ]),
              SizedBox(height: getProportionateScreenWidth(100.0)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Dashboard(
                  location: location,
                ),
              ),
              // child: Quantity_Size(),

              SizedBox(height: getProportionateScreenWidth(50.0)),
              productdetails_Discriptionand_Otherwidgets(location: location),
              SizedBox(height: getProportionateScreenWidth(30.0)),
            ]), // onTap: press,
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
