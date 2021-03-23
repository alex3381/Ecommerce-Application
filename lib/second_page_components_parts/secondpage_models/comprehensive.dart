import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

// BAGS
class Location {
  final String title, description, illustration;
  final List<String> image;
  final List<Color> color;
  final int price, size, id;
  final Color cardColor2;
  final double rating;
  final bool isFavourite, isPopular;

  Location({
    @required this.id,
    @required this.image,
    @required this.title,
    @required this.price,
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

List<Location> locations = [
  Location(
    id: 1,
    title: "GIVENCHY",
    price: 120,
    size: 14,
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases . ",
    image: [
      "assets/images/0000662_givenchy-insense-ultramarine-men-edt-spray-34-oz_550-removebg-preview.png",
      "assets/images/Mumtaz-95-removebg-preview.png",
    ],
    color: [
      Color(0xFF836DB8),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFF01579B),
    illustration: "EST. DIESEL",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Location(
    id: 2,
    title: "CLINIQUE",
    price: 234,
    size: 10,
    description:
        "Ccliniqu perfume prides itself on providing customers with affordable luxury. ",
    image: [
      "assets/images/71nLqTwsY0L._SL1500_-removebg-preview.png",
      "assets/images/61wrcggoJhL._SL1500_-removebg-preview.png",
    ],
    color: [Color(0xFFFFAB00)],
    cardColor2: Color(0xFFEF5350),
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Location(
    id: 3,
    title: "FERAGAMO",
    price: 234,
    size: 8,
    description:
        "Feragamo prides itself on providing customers with affordable luxury."
        " This American brand has long dominated the handbag market with its timeless designs.",
    image: [
      "assets/images/652696_I1600_8489_001_100_0000_Light-Grip-watch-38-mm-removebg-preview-removebg-preview.png",
      "assets/images/652696_I1600_8489_002_100_0000_Light-removebg-preview.png",
    ],
    color: [
      Color(0xFFF6625E),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0XFF5D4037),
    illustration: "Casual Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Location(
    id: 4,
    title: "LAURENT",
    price: 120,
    size: 12,
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most ",
    image: [
      "assets/images/652697_I8600_8872_001_100_0000_Light-Grip-watch-35-mm-removebg-preview.png",
      "assets/images/652697_I8600_8872_002_100_0000_Light-removebg-preview.png",
    ],
    color: [Color(0xFFF6625E)],
    cardColor2: Color(0xFFFFC5C5),
    illustration: "HAND BAG",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Location(
    id: 5,
    title: "ALO BAG",
    price: 454,
    size: 11,
    description:
        "ALO, a name to remeber, the best bag desiners in the Us, Some of the core styles include the Neverfull and the Alma bag.",
    image: [
      "assets/images/1411771_1_zoom-removebg-preview.png",
      "assets/images/1411771_4_zoom-removebg-preview.png",
    ],
    color: [Color(0xFF6A1B9A)],
    cardColor2: Color(0XFF4E342E),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Location(
    id: 6,
    title: "LADY MILLION",
    price: 444,
    size: 16,
    description:
        "One of the most expensive perfume, is a unique blend of leather and cotton, "
        " but the brand has become known for creating fresh new looks every. ",
    image: [
      "assets/images/344d0e0346660a1541576068f48ab847-removebg-preview.png",
      "assets/images/61laD1yQcFL._SL1000_-removebg-preview.png",
    ],
    color: [Color(0xDD000000)],
    cardColor2: Color(0xFFFFC400),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Location(
    id: 7,
    title: "ATLAS BAG",
    price: 454,
    size: 16,
    description: "ATALS is a unique blend of leather andcotton, Some of the,"
        " but the brand has become known for creating fresh new looks every. ",
    image: [
      "assets/images/1395471_1_zoom-removebg-preview.png",
      "assets/images/1395471_4_zoom-removebg-preview.png",
    ],
    color: [Color(0xFFFCC07E)],
    cardColor2: Color(0xFFF44336),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Location(
    id: 8,
    title: "EGDEWOOD",
    price: 454,
    size: 26,
    description:
        "Edgewoos is a unique blend of leather and cotton, Some of the core"
        " but the brand has  . ",
    image: [
      "assets/images/Edgeworks_Jacket_Black_GI9262_01_standard-removebg-preview.png",
      "assets/images/edgeworks-jacket-removebg-preview.png",
    ],
    color: [Color(0xFFFCC07E)],
    cardColor2: Color(0xDD000000),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Location(
    id: 9,
    title: "M16",
    price: 444,
    size: 16,
    description: "Edgewoos is a unique blend of leather and cotton, "
        " but the brand has become known for creating fresh new looks every. ",
    image: [
      "assets/images/W9398R_03607_b1_s1_a4_3_m18_750x-removebg-preview.png",
      "assets/images/W9398R_03607_b1_s1_a1_m18_750x-removebg-preview.png",
    ],
    color: [Color(0xDD000000)],
    cardColor2: Color(0xFFFFAB00),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Location(
    id: 10,
    title: "REEBOCK",
    price: 444,
    size: 16,
    description: "Edgewoos is a unique blend of leather and cotton, "
        " but the brand has become known for creating fresh new looks every. ",
    image: [
      "assets/images/reebok-nano-x-shoes-removebg-preview.png",
      "assets/images/reebok-nano-x-shoes-removebg-preview (1).png",
    ],
    color: [Color(0xDD000000)],
    cardColor2: Color(0xFF9E9E9E),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Location(
    id: 11,
    title: "AVAIATOR",
    price: 444,
    size: 16,
    description: "Edgewoos is a unique blend of leather and cotton, "
        " but the brand has become known for creating fresh new looks every. ",
    image: [
      "assets/images/images-removebg-preview.png",
      "assets/images/71e6fzT9taL._UX679_-removebg-preview.png",
    ],
    color: [Color(0xDD000000)],
    cardColor2: Color(0xFF4E342E),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Location(
    id: 12,
    title: "GUCCI SHOE",
    price: 444,
    size: 16,
    description: "Edgewoos is a unique blend of leather and cotton,"
        " but the brand has become known for creating fresh new looks every. ",
    image: [
      "assets/images/gucci-shoe-one-removebg-preview.png",
      "assets/images/gucci-shoe-two-removebg-preview.png",
    ],
    color: [Color(0xDD000000)],
    cardColor2: Color(0xFF1F0D3C),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
];
