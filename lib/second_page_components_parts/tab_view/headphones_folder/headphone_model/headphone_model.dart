import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

// BAGS
class HeadPhone {
  final String title, description, illustration;
  final List<String> image;
  final List<Color> color;
  final int price, size, id;
  final Color cardColor2;
  final double rating;
  final bool isFavourite, isPopular;

  HeadPhone({
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

List<HeadPhone> demoheadphones = [
  HeadPhone(
    id: 1,
    image: [
      "assets/images/bbd.plpassset.earphones.powerbeats.jpg.large.1x-removebg-preview.png",
      "assets/images/bbd.plpassset.earphones.powerbeatspro.jpg.large.1x-removebg-preview.png",
      "assets/images/bbd.plpassset.earphones.powerbeats.jpg.large.1x-removebg-preview.png",
      "assets/images/bbd.plpassset.wired.beatsep.jpg.large.1x-removebg-preview.png",
    ],
    title: "Beatz",
    price: 120,
    size: 12,
    color: [
      Color(0xFF80CBC4),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFFFAB91),
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 2,
    image: [
      "assets/images/beats_by_dr_dre_powerbeats_pro_in_ear_wireless_1556495419_1472279-removebg-preview.png",
      "assets/images/1588779048_IMG_1353620-removebg-preview.png",
      "assets/images/1588779048_IMG_1353623-removebg-preview.png",
    ],
    title: "B.DRE",
    price: 234,
    size: 8,
    color: [
      Color(0xFFACACAC),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFEFEBE9),
    description:
        "Coach prides itself on providing customers with affordable luxury."
        " This American brand has long dominated the handbag market with its timeless designs, high-quality leather, remarkable stitch work",
    illustration: "Casual Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 3,
    title: "Spade",
    price: 120,
    size: 12,
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    image: [
      "assets/images/Beats-Studio-3-Wireless-Over-Ear-Headphones---ROSE-33436166-6458-550x550h-removebg-preview.png",
      "assets/images/bbd.plpassset.headphones.studio3wireless.jpg.large.1x-removebg-preview.png",
    ],
    color: [Color(0xFFFFC5C5)],
    cardColor2: Color(0xFFEFEBE9),
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 4,
    title: "Hermes",
    price: 234,
    size: 10,
    description:
        "Hermes prides itself on providing customers with affordable luxury. "
        "This American brand has long dominated the handbag market with its timeless designs, high-quality leather, remarkable stitch work",
    image: [
      "assets/images/f_2_1-removebg-preview.png",
      "assets/images/f_3_1-removebg-preview.png",
      "assets/images/headphone_11.png",
    ],
    color: [Color(0xFFCDDC39)],
    cardColor2: Color(0xFFF5F5F5),
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 5,
    title: "Cloud.9",
    price: 454,
    size: 11,
    description:
        "Some of the core styles include the Neverfull and the Alma bag,"
        " but the brand has become known for creating fresh new looks every season thanks to its young design staff",
    image: [
      "assets/images/images-removebg-preview.png",
      "assets/images/unnamed-removebg-preview.png",
      "assets/images/mrkq8-640733015-removebg-preview.png",
    ],
    color: [Color(0xFFF6625E)],
    cardColor2: Color(0xFFFF8A80),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 6,
    title: "D.Beatz",
    price: 120,
    size: 12,
    description: "Kate Spade arrived on the fashion scene in 1993, "
        "but she honed her eye for fashion as an accessories editor for Mademoiselle.",
    image: ["assets/images/unkwon.png"],
    color: [Color(0xFF80CBC4)],
    cardColor2: Color(0xFFFfab40),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 7,
    title: "CREED",
    price: 234,
    size: 12,
    description:
        "Accomplished ready-to-wear and menswear designer Marc Jacobs launched his"
        " own handbag line in 2000 and continues to oversee both Louis Vuitton and his own brand. By 2003,"
        " Marc Jacobs had elevated Louis Vuitton to arguably the most coveted brand in the world",
    image: [
      "assets/images/headphone_5.png",
    ],
    color: [Color(0xFF80CBC4)],
    cardColor2: Color(0xFFCFD8DC),
    illustration: "innovative",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 8,
    title: "Unplugged",
    price: 234,
    size: 12,
    description:
        "This product is made with Primegreen, a series of high-performance recycled materials "
        "It's cut from durable material that's dirt- and water-resistant so it can protect "
        "your gear no matter where your plans take you. Dial in the perfect fit with the padded adjustable shoulder strap,"
        " or just grab it by the haul handles and go when time is of the essence.",
    image: [
      "assets/images/headphone_6.png",
      "assets/images/headphone_8.png",
    ],
    color: [Color(0xFF836DB8)],
    cardColor2: Color(0xFFEEEEEE),
    illustration: "innovative",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 9,
    title: "X.Factor",
    price: 234,
    size: 12,
    description:
        "Accomplished ready-to-wear and menswear designer Marc Jacobs launched his"
        " own handbag line in 2000 and continues to oversee both Louis Vuitton and his own brand. By 2003,"
        " Marc Jacobs had elevated Louis Vuitton to arguably the most coveted brand in the world",
    image: [
      "assets/images/headphone_10.png",
      "assets/images/headphone_11.png",
    ],
    color: [Color(0xFFF6625E)],
    cardColor2: Color(0xFFd6d6d6),
    illustration: "Duffel Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 10,
    title: "GERD",
    price: 234,
    size: 12,
    description:
        " our outfit is almost perfect, but it's missing one thing: pockets. Grab this adidas festival bag when you need some extra storage on the go. The front slip-in zip"
        " pocket keeps cards and an ID handy so you're ready when it's time to treat your crew to coffeeThis product is made with Primegreen, a series of high-performance recycled materials",
    image: [
      "assets/images/headphone_12.png",
      "assets/images/headphone_13.png",
    ],
    color: [Color(0xFF80CBC4)],
    cardColor2: Color(0xFFBDBDBD),
    illustration: "Sport Gear",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 11,
    title: "Sound.X",
    price: 234,
    size: 12,
    description:
        "Since 1972, the Trefoil has stood out on the streets. Carry on the tradition "
        "every time you load up this adidas backpack. Padded shoulder straps "
        "keep you comfortable no matter what you toss inside.This product is "
        "made with Primegreen, a series of high-performance recycled materials",
    image: [
      "assets/images/headphones_3.png",
      "assets/images/headphones.png",
    ],
    color: [Color(0xffF0AEAF)],
    cardColor2: Color(0xFFff8a80),
    illustration: "Sport Aware",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 12,
    title: "Endurance",
    price: 234,
    size: 12,
    description:
        "here's something effortless about a Endurance bag. Maybe it's the weight off your shoulders. "
        "The buckle-and-forget-it attitude. Or, in the case of this adidas bag made in collaboration with HER Studio London, maybe it's the vibrant print that resembles a trip to the tropics. Stow all your valuables for the day, and start dreaming of dense jungles and sunny beaches, even if you're just taking a short trip to town.",
    image: [
      "assets/images/images-removebg-preview.png",
      "assets/images/unnamed-removebg-preview.png",
    ],
    color: [Color(0XffF9EFB0)],
    cardColor2: Color(0xFFD84356),
    illustration: "Hike Backpack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 13,
    title: "Sound City",
    price: 234,
    size: 12,
    description:
        "We took a classic adidas backpack and shrunk it down into this micro bag. The zip main compartment"
        "is just big enough to stash your keys, cards or some other tiny must-haves. The best part? You can clip it onto a larger pack, so your small essentials don't get lost in the load.",
    image: [
      "assets/images/f_3_1-removebg-preview.png",
      "assets/images/f_2_1-removebg-preview.png",
    ],
    color: [Color(0xFFCDDC39)],
    cardColor2: Color(0xFFD84315),
    illustration: "Hike Backpack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 14,
    title: "Flap ",
    price: 234,
    size: 12,
    description:
        "We took a classic adidas backpack and shrunk it down into this micro bag. The zip main compartment"
        "is just big enough to stash your keys, cards or some other tiny must-haves. The best part? You can clip it onto a larger pack, so your small essentials don't get lost in the load.",
    image: [
      "assets/images/bbd.plpassset.headphones.solopro.jpg.large.1x-removebg-preview.png",
      "assets/images/bbd.plpassset.wired.beatsep.jpg.large.1x-removebg-preview.png"
    ],
    color: [Color(0xffF0AEAF)],
    cardColor2: Color(0xFFF5F5F5),
    illustration: "Hike Backpack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 15,
    title: " Blues",
    price: 234,
    size: 12,
    description:
        "We took a classic adidas backpack and shrunk it down into this micro bag. The zip main compartment"
        "is just big enough to stash your keys, cards or some other tiny must-haves. The best part? You can clip it onto a larger pack, so your small essentials don't get lost in the load.",
    image: [
      "assets/images/bbd.plpassset.earphones.powerbeatspro.jpg.large.1x-removebg-preview.png",
      "assets/images/bbd.plpassset.earphones.powerbeats.jpg.large.1x-removebg-preview.png",
    ],
    color: [Color(0xffF0AEAF)],
    cardColor2: Color(0xFF90caf9),
    illustration: "Hike Backpack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  HeadPhone(
    id: 16,
    title: " Grey",
    price: 234,
    size: 12,
    description:
        "Accomplished ready-to-wear and menswear designer Marc Jacobs launched his"
        " own handbag line in 2000 and continues to oversee both Louis Vuitton and his own brand. By 2003,"
        " Marc Jacobs had elevated Louis Vuitton to arguably the most coveted brand in the world",
    image: [
      "assets/images/headphone_6.png",
      "assets/images/headphone_11.png",
    ],
    color: [Color(0xFF455668)],
    cardColor2: Color(0xfffafafa),
    illustration: "Travel Pack",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
];
