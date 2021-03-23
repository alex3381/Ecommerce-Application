import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

// BAGS
class Production {
  final String title, description, illustration;
  final List<String> image;
  final List<Color> color;
  final int price, size, id;
  final Color cardColor2;
  final double rating;
  final bool isFavourite, isPopular;

  Production({
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

List<Production> demoproductions = [
  Production(
    id: 1,
    title: "GRIP",
    price: 120,
    size: 14,
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most ",
    image: [
      "assets/images/gucci_Light-Grip-watch-35mm-one-removebg-preview.png",
      "assets/images/gucci_Light-Grip-watch-35mm_three-removebg-preview.png",
    ],
    color: [
      Color(0xFF836DB8),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFFFAB00),
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 2,
    title: "SILVER",
    price: 234,
    size: 8,
    description:
        "Coach prides itself on providing customers with affordable luxury."
        " This American brand has long dominated the handbag market with its timeless designs.",
    image: [
      "assets/images/gucci_slver_Light-Grip-watch-38mm_one-removebg-preview.png",
      "assets/images/gucci_silverLight-Grip-watch-38mm_two-removebg-preview.png",
    ],
    color: [
      Color(0xFFF6625E),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFACACAC),
    illustration: "Casual Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 3,
    title: "KATE SPADE",
    price: 120,
    size: 12,
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most ",
    image: [
      "assets/images/armless_one-removebg-preview.png",
      "assets/images/armless-two-removebg-preview.png",
    ],
    color: [Color(0xFFF6625E)],
    cardColor2: Color(0xFFFFC5C5),
    illustration: "HAND BAG",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 4,
    title: "NOTRADAME",
    price: 234,
    size: 10,
    description:
        "Hermes prides itself on providing customers with affordable luxury. "
        "This American brand has long dominated the handbag market with its timeless designs.k",
    image: [
      "assets/images/Large-notradame-one-removebg-preview.png",
      "assets/images/Large-notradame-two-removebg-preview.png",
    ],
    color: [Color(0xFFFFAB00)],
    cardColor2: Color(0xFF535353),
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 5,
    title: "FENDI",
    price: 454,
    size: 11,
    description:
        "Some of the core styles include the Neverfull and the Alma bag,"
        " but the brand has become known for creating fresh new looks every. ",
    image: [
      "assets/images/gucci-shoe-two-removebg-preview.png",
      "assets/images/gucci-shoe-one-removebg-preview.png",
    ],
    color: [Color(0xFF6A1B9A)],
    cardColor2: Color(0xFFF6625E),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 6,
    title: "IRRESISTABLE",
    price: 120,
    size: 12,
    description: "Kate Spade arrived on the fashion scene in 1993, "
        "but she honed her eye for fashion as an accessories editor for Mademoiselle.",
    image: [
      "assets/images/irresistable-givenchy-perfume-one-removebg-preview.png",
      "assets/images/irresistable-givenchy-perfume-two-removebg-preview.png",
    ],
    color: [Color(0xFF6A1B9A)],
    cardColor2: Color(0xFFFFC5C5),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 7,
    title: "BLOOM",
    price: 234,
    size: 12,
    description:
        "Accomplished ready-to-wear and menswear designer Marc Jacobs launched his"
        " own handbag line in 2000 and continues to oversee both Louis Vuitton.",
    image: [
      "assets/images/_Light-Gucci-Bloom-Profumo-removebg-preview.png",
      "assets/images/Light-Gucci-Bloom-Profumo-di-Fiori-100ml-Eau-de-Parfum-two-removebg-preview.png",
    ],
    color: [Color(0xFF2962FF)],
    cardColor2: Color(0xFFFFAB00),
    illustration: "innovative",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 8,
    title: "BALENCIAGA",
    price: 234,
    size: 12,
    description:
        "This product is made with Primegreen, a series of high-performance recycled materials "
        "It's cut from durable material ",
    image: [
      "assets/images/Large-54_balenciaga_three-removebg-preview.png",
      "assets/images/Large-balenciaga-four-removebg-preview.png",
    ],
    color: [Color(0xFF2962FF)],
    cardColor2: Color(0xFFFFA53E),
    illustration: "innovative",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 9,
    title: "YEAZZY",
    price: 234,
    size: 12,
    description:
        "Accomplished ready-to-wear and menswear designer Marc Jacobs launched his"
        " own handbag line in 2000 and continues.",
    image: [
      "assets/images/Large-balencia-removebg-preview.png",
      "assets/images/Large-balencia-removebg-preview.png",
    ],
    color: [Color(0xFF7C4DFF)],
    cardColor2: Color(0xFFDD2C00),
    illustration: "Duffel Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 10,
    title: "SUNRAYS",
    price: 234,
    size: 12,
    description:
        " our outfit is almost perfect, but it's missing one thing: pockets. "
        "Grab this adidas festival bag when you need some extra storage on the go.",
    image: [
      "assets/images/gucci-sunglasses-one-removebg-preview.png",
      "assets/images/gucci_Light-Square-frame-sunglasses_three-removebg-preview.png",
    ],
    color: [Color(0xFF00BCD4)],
    cardColor2: Color(0xFF3E2723),
    illustration: "Sport Gear",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 11,
    title: "AVIATOR",
    price: 234,
    size: 12,
    description:
        "Since 1972, the Trefoil has stood out on the streets. Carry on the tradition ",
    image: [
      "assets/images/avaitor-two-removebg-preview.png",
      "assets/images/aviator-three-removebg-preview.png",
    ],
    color: [Color(0xFFDD2C00)],
    cardColor2: Color(0xFF00BCD4),
    illustration: "Sport Aware",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 12,
    title: "ENDURANCE",
    price: 234,
    size: 12,
    description:
        "here's something effortless about a Endurance bag. Maybe it's the weight off your shoulders.",
    image: [
      "assets/images/givenchy-one-removebg-preview.png",
      "assets/images/givenchy-two-removebg-preview.png",
    ],
    color: [Color(0xFF80DEEA)],
    cardColor2: Color(0xFF7C4DFF),
    illustration: "Hike Backpack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 13,
    title: "MARK PANE",
    price: 234,
    size: 12,
    description:
        "We took a classic adidas backpack and shrunk it down into this micro bag. The zip main compartment.",
    image: [
      "assets/images/suit-one-removebg-preview.png",
      "assets/images/suit-two-removebg-preview.png",
    ],
    color: [Color(0xFFACACAC)],
    cardColor2: Color(0xFF80DEEA),
    illustration: "Hike Backpack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 14,
    title: "DENIM",
    price: 234,
    size: 12,
    description:
        "We took a classic adidas backpack and shrunk it down into this micro bag. The zip main compartment",
    image: [
      "assets/images/Light-Eco-washed-organic-denim-dress-removebg-preview.png",
      "assets/images/_Light-Eco-washed-organic-denim-dress-one-removebg-preview.png",
    ],
    color: [Color(0xFFFFAB00)],
    cardColor2: Color(0xFFACACAC),
    illustration: "Hike Backpack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 15,
    title: " SWATCHS",
    price: 234,
    size: 12,
    description:
        "We took a classic adidas backpack and shrunk it down into this micro bag. The zip main compartment.",
    image: [
      "assets/images/guccci_Light-Doraemon-x-Gucci-Dive-watch-40mm-one-removebg-preview.png",
      "assets/images/_Light-Doraemon-x-Gucci-Dive-watch-40mm_two-removebg-preview.png",
    ],
    color: [Color(0xFF7C4DFF)],
    cardColor2: Color(0XFF3E2723),
    illustration: "Hike Backpack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Production(
    id: 16,
    title: "Grey",
    price: 234,
    size: 12,
    description:
        "Accomplished ready-to-wear and menswear designer Marc Jacobs launched his",
    image: [
      "assets/images/Light-G-Frame-watch-gucci-removebg-preview.png",
      "assets/images/gucci-Light-G-Frame-watch-21x34mm_two-removebg-preview.png",
    ],
    color: [Color(0xFF80DEEA)],
    cardColor2: Color(0xFFFFAB00),
    illustration: "Travel Pack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
];
