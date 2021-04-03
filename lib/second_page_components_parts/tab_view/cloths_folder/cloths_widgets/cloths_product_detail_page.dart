// import 'package:consistency_seventh_son/first_page_component_parts/firstpage_second_gridview_folder/firstpage_detailpage_gridview_components/positionedwidget_details.dart';
// import 'package:consistency_seventh_son/second_page_components_parts/tab_view/cloths_folder/cloths_model/cloths_model.dart';
// import 'package:consistency_seventh_son/universal_models/size_config.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// class Detail_views extends StatelessWidget {
//   final Wear demoproducts;
//
//   const Detail_views({Key key, this.demoproducts}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: demoproducts.cardColor2,
// // backgroundColor: Colors.white,
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             elevation: 0,
// // backgroundColor: demoproduct.cardColor2,
//             backgroundColor: Colors.white,
//             forceElevated: true,
//             floating: true,
//             snap: true,
//             centerTitle: true,
//             leading: Card(
//               elevation: 10,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(35.0),
//               ),
//               child: ClipOval(
//                 child: Material(
//                   color: Colors.transparent, // button color
//                   child: InkWell(
//                     splashColor: Colors.red, // inkwell color
//                     child: SizedBox(
//                       width: 35,
//                       height: 35,
//                       child: IconButton(
//                           icon: SvgPicture.asset(
//                             'assets/icons/back_arrow.svg',
//                             color: demoproducts.cardColor2,
//                           ),
//                           onPressed: () {
//                             Navigator.pop(context);
//                           }),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             actions: <Widget>[
//               Card(
//                 elevation: 10,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(35.0),
//                 ),
//                 child: ClipOval(
//                     child: Material(
//                         color: Colors.transparent, // button color
//                         child: InkWell(
//                           splashColor: Colors.red, // inkwell color
//                           child: SizedBox(
//                             width: 35,
//                             height: 35,
//                             child: IconButton(
//                               onPressed: () => {},
//                               icon: SvgPicture.asset(
//                                 'assets/icons/add_to_cart.svg',
//                                 color: demoproducts.cardColor2,
//                               ),
//                             ),
//                           ),
//                         ))),
//               ),
//               Card(
//                   elevation: 10,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(35.0),
//                   ),
//                   child: ClipOval(
//                     child: Material(
//                       color: Colors.transparent, // button color
//                       child: InkWell(
//                         splashColor: Colors.red, // inkwell color
//                         child: SizedBox(
//                           width: 35,
//                           height: 35,
//                           child: IconButton(
//                             onPressed: () => {},
//                             icon: SvgPicture.asset(
//                               'assets/icons/menu.svg',
//                               color: demoproducts.cardColor2,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   )),
//             ],
//
//             expandedHeight: 230,
// // pinned: true,
//             flexibleSpace: FlexibleSpaceBar(
//               centerTitle: true,
//               background: Stack(
//                 overflow: Overflow.visible,
//                 clipBehavior: Clip.hardEdge,
//                 fit: StackFit.expand,
//                 children: <Widget>[
//                   ClipPath(
// // clipper: CustomShapeClipper(),
//                     child: Container(
//                       height: 5,
//                       decoration: BoxDecoration(color: demoproducts.cardColor2),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             title: Text.rich(TextSpan(children: [
//               TextSpan(
//                 text: "Lamp",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 27,
//                 ),
//               ),
//               TextSpan(
//                 text: 'star',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//             ])),
//           ),
//           SliverList(
//             delegate: SliverChildListDelegate([
//               Stack(
//                   overflow: Overflow.visible,
//                   clipBehavior: Clip.hardEdge,
//                   fit: StackFit.passthrough,
//                   children: [
//                     Container(
//                       height: getProportionateScreenWidth(400.0),
//                       width: getProportionateScreenWidth(400.0),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.only(
//                           bottomRight: Radius.circular(10),
//                           bottomLeft: Radius.circular(10),
//                         ),
//                       ),
//                       child: Hero(
//                         tag: demoproducts.id.toString(),
//                         child: AspectRatio(
//                           aspectRatio: 10.0 / 10.0,
//                           child: Image.asset(
//                             demoproducts.image[0],
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                     ),
// // ),
//  firstdetailpage_position(demoproduct: demoproducts),
//                   ]),
//               SizedBox(height: getProportionateScreenWidth(100.0)),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 10,
//                 ),
// // child: Quantity_Size(),
//               ),
//               SizedBox(height: getProportionateScreenWidth(50.0)),
// // Gridview_View_Product_description(
// // demoproductons: demoproductions),
//               SizedBox(height: getProportionateScreenWidth(30.0)),
//             ]), // onTap: press,
//           ),
//         ],
//       ),
//       drawer: Drawer(),
//     );
//   }
// }
//
