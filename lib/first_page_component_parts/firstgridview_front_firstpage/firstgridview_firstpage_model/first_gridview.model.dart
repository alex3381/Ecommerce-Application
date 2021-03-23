import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Racoon {
  final String title, description, illustration;
  final List<String> image;
  final List<Color> color;
  final int price, size, id;
  final Color cardColor2;
  final double rating;
  final bool isFavourite, isPopular;

  Racoon({
    @required this.id,
    @required this.image,
    @required this.title,
    @required this.price,
    // @required this.description,
    @required this.size,
    @required this.color,
    @required this.cardColor2,
    @required this.description,
    @required this.illustration,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
  });
}

List<Racoon> racoons = [
  Racoon(
    id: 1,
    image: [
      "assets/images/heritage-2-backpack-CxJ6qb.png",
      "assets/images/heritage-2-backpack-CxJ6qb (2).png",
      "assets/images/heritage-2-backpack-CxJ6qb (3).png",
      "assets/images/heritage-2-backpack-CxJ6qb (1).png",
    ],
    title: "Atelias",
    price: 120,
    size: 12,
    color: [
      Color(0xFF80CBC4),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFFFB74D),
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Racoon(
    id: 2,
    image: [
      "assets/images/1395471_1_zoom-removebg-preview.png",
      "assets/images/1395471_4_zoom-removebg-preview.png",
      "assets/images/1395471_4_zoom-removebg-preview (1).png",
    ],
    title: "Spencers",
    price: 120,
    size: 12,
    color: [
      Color(0xFFDECB9C),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFD7CCC8),
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Racoon(
    id: 3,
    image: [
      "assets/images/output-onlinepngtools.png",
      "assets/images/academy-team-football-duffel-bag-2KTrb7j3 (1).png",
      "assets/images/Webp.net-resizeimage.png",
    ],
    title: "Chanel",
    price: 234,
    size: 8,
    color: [
      Color(0xFFACACAC),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFF6625E),
    description:
        "Coach prides itself on providing customers with affordable luxury."
        " This American brand has long dominated the handbag market with its timeless designs, high-quality leather, remarkable stitch work",
    illustration: "Casual Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Racoon(
    id: 4,
    image: [
      "assets/images/sportswear-synthetic-fill-jacket-Rtj7pB-removebg-preview.png",
      "assets/images/sportswear-synthetic-fill-jacket-Rtj7pB__1_-removebg-preview.png",
      "assets/images/sportswear-synthetic-fill-jacket-Rtj7pB__2_-removebg-preview.png",
    ],
    title: "W.BREAKER",
    price: 120,
    size: 12,
    color: [
      Color(0xFFF6625E),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFCE93D8),
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Racoon(
    id: 5,
    title: "Kate Spade",
    price: 120,
    size: 12,
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    image: [
      "assets/images/flap-two-layer-backpack-removebg-preview.png",
      "assets/images/flap-two-removebg-preview.png",
    ],
    color: [Color(0xFFFFC5C5)],
    cardColor2: Color(0xFF0277BD),
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Racoon(
    id: 6,
    title: "Hermes",
    price: 234,
    size: 10,
    description:
        "Hermes prides itself on providing customers with affordable luxury. "
        "This American brand has long dominated the handbag market with its timeless designs, high-quality leather, remarkable stitch work",
    image: [
      "assets/images/sportswear-essentials-hip-pack-fc5Tj5 (1).png",
      "assets/images/sportswear-essentials-hip-pack-fc5Tj5.png",
      "assets/images/sportwear.png",
      "assets/images/sportswear-essentials-hip.png",
    ],
    color: [Color(0xFFB2DFDB)],
    cardColor2: Color(0xFFCCFF90),
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Racoon(
    id: 7,
    title: "Fendi",
    price: 454,
    size: 11,
    description:
        "Some of the core styles include the Neverfull and the Alma bag,"
        " but the brand has become known for creating fresh new looks every season thanks to its young design staff",
    image: [
      "assets/images/one-luxe-training-bag-DkRkqL (2).png",
      "assets/images/one-luxe-training-bag-DkRkqL (3).png",
      "assets/images/one-luxe-training-bag-DkRkqL (1).png",
    ],
    color: [Color(0xFFF6625E)],
    cardColor2: Color(0xFFEFEBE9),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
];
