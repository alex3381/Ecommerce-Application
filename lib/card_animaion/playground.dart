import 'package:consistency_seventh_son/card_animaion/widgets/animated_card_deck.dart';
import 'package:consistency_seventh_son/card_animaion/widgets/atm_card.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaygroundPage extends StatefulWidget {
  @override
  _PlaygroundPageState createState() => _PlaygroundPageState();
}

class _PlaygroundPageState extends State<PlaygroundPage>
    with TickerProviderStateMixin {
  List<ATMCardUIDetails> cardsDetailsList = [
    ATMCardUIDetails(
      // gradientColors: [Colors.indigo, Colors.purple],
      gradientColors: [Colors.white, Colors.grey[400]],
      price: 120,
      image: "assets/images/calvinklien.jpg",
      title: "CALVIN KLEIN",
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    ATMCardUIDetails(
      gradientColors: [Colors.white, Colors.grey[400]],
      price: 350,
      image: "assets/images/nike.jpg",
      title: "NIKE",
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    ATMCardUIDetails(
      gradientColors: [Colors.white, Colors.grey[400]],
      price: 500,
      image: "assets/images/tomford.jpg",
      title: "T.FORD",
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    ATMCardUIDetails(
      gradientColors: [Colors.white, Colors.grey[400]],
      price: 210,
      title: "SNEAKERS",
      image: "assets/images/nike_sneakers.jpg",
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    ATMCardUIDetails(
      image: "assets/images/check1.jpg",
      price: 130,
      title: "NOTRADAME",
      gradientColors: [Colors.white, Colors.grey[400]],
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    ATMCardUIDetails(
      image: "assets/images/prada.jpg",
      price: 410,
      gradientColors: [
        Colors.white,
        Colors.grey[400],
      ],
      title: "GUCCI",
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        // color: Colors.[200],
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(140)),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    child: ListView(
                      children: [
                        AnimatedCardDeck(
                            cardsDetailsList: cardsDetailsList,
                            size: getProportionateScreenWidth(100)),
                        SizedBox(height: getProportionateScreenWidth(25)),
                        Row(
                          children: [],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
