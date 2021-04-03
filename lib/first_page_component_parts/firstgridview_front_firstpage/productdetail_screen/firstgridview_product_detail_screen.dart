import 'package:consistency_seventh_son/first_page_component_parts/firstgridview_front_firstpage/animated_container/productcard.dart';
import 'package:consistency_seventh_son/first_page_component_parts/firstgridview_front_firstpage/firstgridview_firstpage_model/first_gridview.model.dart';
import 'package:consistency_seventh_son/first_page_component_parts/firstgridview_front_firstpage/productdetail_screen/positionedwidget_details.dart';
import 'package:consistency_seventh_son/first_page_component_parts/firstgridview_front_firstpage/productdetail_screen/product_detailsdescription_andotherwidgets.dart';
import 'package:consistency_seventh_son/second_page_components_parts/Clipper_and%20Others/customer_clipper.dart';
import 'package:consistency_seventh_son/second_page_components_parts/dashboard/dashboard.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetail_Screen extends StatelessWidget {
  const ProductDetail_Screen({
    Key key,
    @required this.racoon,
    this.press,
  }) : super(key: key);

  final Racoon racoon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
        onTap: press,
        child: Scaffold(
          backgroundColor: racoon.cardColor2,
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                forceElevated: true,
                floating: true,
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
                          height: 35,
                          child: IconButton(
                              icon: SvgPicture.asset(
                                'assets/icons/back_arrow.svg',
                                color: racoon.cardColor2,
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
                                height: 35,
                                child: IconButton(
                                  onPressed: () => {},
                                  icon: SvgPicture.asset(
                                    'assets/icons/add_to_cart.svg',
                                    color: racoon.cardColor2,
                                  ),
                                ),
                              ),
                            ))),
                  ),
                  SizedBox(height: 5),
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
                                  color: racoon.cardColor2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
                expandedHeight: 230,
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
                          decoration: BoxDecoration(color: racoon.cardColor2),
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
                          child: ProductImages(racoon: racoon),
                        ),
                        Positioned_widgetfirstgrid(racoon: racoon)
                      ]),
                  SizedBox(height: getProportionateScreenWidth(100.0)),
                  Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Dashboard()),
                  SizedBox(height: getProportionateScreenWidth(50.0)),
                  productdetails_Discription(racoon: racoon),
                  SizedBox(height: getProportionateScreenWidth(30.0)),
                ]), // onTap: press,
              ),
            ],
          ),
          drawer: Drawer(),
        ));
  }
}
