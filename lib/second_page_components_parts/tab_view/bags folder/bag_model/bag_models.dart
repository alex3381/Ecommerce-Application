import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

// BAGS
class Crank {
  final String title, description, illustration;
  final List<String> image;
  final List<Color> color;
  final int price, size, id;
  final Color cardColor2;
  final double rating;
  final bool isFavourite, isPopular;

  Crank({
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

List<Crank> cooks = [
  Crank(
    id: 1,
    image: [
      "assets/images/heritage-2-backpack-CxJ6qb.png",
      "assets/images/heritage-2-backpack-CxJ6qb (2).png",
      "assets/images/heritage-2-backpack-CxJ6qb (3).png",
      "assets/images/heritage-2-backpack-CxJ6qb (1).png",
    ],
    title: "Nike",
    price: 120,
    size: 12,
    color: [
      Color(0xFF80CBC4),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFFFD740),
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 2,
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
  Crank(
    id: 3,
    title: "Dufel",
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
    cardColor2: Color(0xFF90CAF9),
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 4,
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
    color: [Color(0xFFCDDC39)],
    cardColor2: Color(0xFFB2FF59),
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 5,
    title: "Luxe",
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
    cardColor2: Color(0xFFd7ccc8),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 6,
    title: "Balenciaga",
    price: 120,
    size: 12,
    description: "Kate Spade arrived on the fashion scene in 1993, "
        "but she honed her eye for fashion as an accessories editor for Mademoiselle.",
    image: ["assets/images/bag_7.png"],
    color: [Color(0xFF80CBC4)],
    cardColor2: Color(0xFFa1887f),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 7,
    title: "Sport Wear",
    price: 234,
    size: 12,
    description:
        "Accomplished ready-to-wear and menswear designer Marc Jacobs launched his"
        " own handbag line in 2000 and continues to oversee both Louis Vuitton and his own brand. By 2003,"
        " Marc Jacobs had elevated Louis Vuitton to arguably the most coveted brand in the world",
    image: [
      "assets/images/sportswear-small-items-bag-m4sbMr.png",
      "assets/images/sportswear-small-items-bag-m4sbMr (1).png",
      "assets/images/sportswear-small-items-bag-m4sbMr (2).png",
      "assets/images/sportswear-small-items-bag-m4sbMr (3).png",
    ],
    color: [Color(0xFF836DB8)],
    cardColor2: Color(0xFFf5f5f5),
    illustration: "innovative",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 8,
    title: "Nike Bag",
    price: 234,
    size: 12,
    description:
        "This product is made with Primegreen, a series of high-performance recycled materials "
        "It's cut from durable material that's dirt- and water-resistant so it can protect "
        "your gear no matter where your plans take you. Dial in the perfect fit with the padded adjustable shoulder strap,"
        " or just grab it by the haul handles and go when time is of the essence.",
    image: [
      "assets/images/sportswear-shoe-box-bag-m.png",
      "assets/images/sportswear-shoe.png",
      "assets/images/sportswear-shoe-box-bag-mP.png",
    ],
    color: [Color(0xFF836DB8)],
    cardColor2: Color(0x8AFFFFFF),
    illustration: "innovative",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 9,
    title: "Adidas Bag",
    price: 234,
    size: 12,
    description:
        "Accomplished ready-to-wear and menswear designer Marc Jacobs launched his"
        " own handbag line in 2000 and continues to oversee both Louis Vuitton and his own brand. By 2003,"
        " Marc Jacobs had elevated Louis Vuitton to arguably the most coveted brand in the world",
    image: [
      "assets/images/utility-power-training-duffel-bag-WC6WrR (3).png",
      "assets/images/utility-power-training-duffel-bag-WC6WrR.png",
      "assets/images/utility-power-training-duffel-bag-WC6WrR (1).png",
      "assets/images/utility-power-training-duffel-bag-WC6WrR (2).png",
    ],
    color: [Color(0xFFF6625E)],
    cardColor2: Color(0xFFBDBDBD),
    illustration: "Duffel Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 10,
    title: "Power Backpack",
    price: 234,
    size: 12,
    description:
        " our outfit is almost perfect, but it's missing one thing: pockets. Grab this adidas festival bag when you need some extra storage on the go. The front slip-in zip"
        " pocket keeps cards and an ID handy so you're ready when it's time to treat your crew to coffeeThis product is made with Primegreen, a series of high-performance recycled materials",
    image: [
      "assets/images/shoebox-bag-SdgGPJ.png",
      "assets/images/shoebox-bag-SdgGPJ (3).png",
      "assets/images/shoebox-bag-SdgGPJ (1).png",
      "assets/images/shoebox-bag-SdgGPJ (2).png",
    ],
    color: [Color(0xFF80CBC4)],
    cardColor2: Color(0xFFF6625E),
    illustration: "Sport Gear",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 11,
    title: "Adidas Backpack",
    price: 234,
    size: 12,
    description:
        "Since 1972, the Trefoil has stood out on the streets. Carry on the tradition "
        "every time you load up this adidas backpack. Padded shoulder straps "
        "keep you comfortable no matter what you toss inside.This product is "
        "made with Primegreen, a series of high-performance recycled materials",
    image: [
      "assets/images/sportswear-shoe-box-bag-m.png",
      "assets/images/sportswear-shoe.png",
      "assets/images/sportswear-shoe-box-bag-mP.png",
    ],
    color: [Color(0xffF0AEAF)],
    cardColor2: Color(0xFFFAFAFA),
    illustration: "Sport Aware",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 12,
    title: "Adidas Endurance",
    price: 234,
    size: 12,
    description:
        "here's something effortless about a Endurance bag. Maybe it's the weight off your shoulders. "
        "The buckle-and-forget-it attitude. Or, in the case of this adidas bag made in collaboration with HER Studio London, maybe it's the vibrant print that resembles a trip to the tropics. Stow all your valuables for the day, and start dreaming of dense jungles and sunny beaches, even if you're just taking a short trip to town.",
    image: [
      "assets/images/fendi.png",
      "assets/images/FENDI-ONE.png",
    ],
    color: [Color(0XffF9EFB0)],
    cardColor2: Color(0xFFA1887F),
    illustration: "Hike Backpack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 13,
    title: "Adidas Classic",
    price: 234,
    size: 12,
    description:
        "We took a classic adidas backpack and shrunk it down into this micro bag. The zip main compartment"
        "is just big enough to stash your keys, cards or some other tiny must-haves. The best part? You can clip it onto a larger pack, so your small essentials don't get lost in the load.",
    image: [
      "assets/images/bag1.png",
      "assets/images/backpack-remove.png",
      "assets/images/new-classics.png",
    ],
    color: [Color(0xFFCDDC39)],
    cardColor2: Color(0xFFFFCDD2),
    illustration: "Hike Backpack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 14,
    title: "Flap Adidas",
    price: 234,
    size: 12,
    description:
        "We took a classic adidas backpack and shrunk it down into this micro bag. The zip main compartment"
        "is just big enough to stash your keys, cards or some other tiny must-haves. The best part? You can clip it onto a larger pack, so your small essentials don't get lost in the load.",
    image: ["assets/images/shoe-bag-removebg-preview.png"],
    color: [Color(0xffF0AEAF)],
    cardColor2: Color(0xFFBBDEFB),
    illustration: "Hike Backpack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 15,
    title: " Duffel Adidas",
    price: 234,
    size: 12,
    description:
        "We took a classic adidas backpack and shrunk it down into this micro bag. The zip main compartment"
        "is just big enough to stash your keys, cards or some other tiny must-haves. The best part? You can clip it onto a larger pack, so your small essentials don't get lost in the load.",
    image: ["assets/images/Shoe_Bag-removebg-preview.png"],
    color: [Color(0xffF0AEAF)],
    cardColor2: Color(0xFFFCE4EC),
    illustration: "Hike Backpack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Crank(
    id: 16,
    title: "Adidas Grey",
    price: 234,
    size: 12,
    description:
        "Accomplished ready-to-wear and menswear designer Marc Jacobs launched his"
        " own handbag line in 2000 and continues to oversee both Louis Vuitton and his own brand. By 2003,"
        " Marc Jacobs had elevated Louis Vuitton to arguably the most coveted brand in the world",
    image: ["assets/images/power-removebg-preview.png"],
    color: [Color(0xFF455668)],
    cardColor2: Color(0xFFE1F5FE),
    illustration: "Travel Pack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
];
