import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

// BAGS
class Wear {
  final String title, description, illustration;
  final List<String> image;
  final List<Color> color;
  final int price, size, id;
  final Color cardColor2;
  final double rating;
  final bool isFavourite, isPopular;

  Wear({
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

List<Wear> demoproducts = [
  Wear(
    id: 1,
    image: [
      "assets/images/parker.png",
      "assets/images/parker_one.png",
      "assets/images/parker_three.png",
    ],
    title: "Breaker",
    price: 120,
    size: 12,
    color: [
      Color(0xFF836DB8),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFDECB9C),
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 2,
    image: [
      "assets/images/sportswear-synthetic-fill-jacket-Rtj7pB-removebg-preview.png",
      "assets/images/sportswear-synthetic-fill-jacket-Rtj7pB__1_-removebg-preview.png",
      "assets/images/sportswear-synthetic-fill-jacket-Rtj7pB__2_-removebg-preview.png",
    ],
    title: "Spencers",
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
  Wear(
    id: 3,
    image: [
      "assets/images/speed-7-8-length-matte-running-leggings-TXh6dJ__2_-removebg-preview.png",
      "assets/images/speed-7-8-length-matte-running-leggings-TXh6dJ-removebg-preview.png",
      "assets/images/speed-7-8-length-matte-running-leggings-TXh6dJ-removebg-preview.png",
      "assets/images/speed-7-8-length-matte-running-leggings-TXh6dJ__3_-removebg-preview.png",
    ],
    title: "Smith",
    price: 120,
    size: 12,
    color: [
      Color(0xFFFFAB40),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0x62FFFFFF),
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 4,
    image: [
      "assets/images/jordan-flight-fleece-trousers-7pdD7F__2_-removebg-preview.png",
      "assets/images/jordan-flight-fleece-trousers-7pdD7F-removebg-preview.png",
      "assets/images/jordan-flight-fleece-trousers-7pdD7F__1_-removebg-preview.png",
    ],
    title: "L.VUITTON",
    price: 120,
    size: 12,
    color: [
      Color(0xFFFFAB40),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFF8D6E63),
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 5,
    image: [
      "assets/images/essential-run-division-running-jacket-V68nHj-removebg-preview.png",
      "assets/images/essential-run-division-running-jacket-V68nHj__1_-removebg-preview.png",
      "assets/images/essential-run-division-running-jacket-V68nHj__2_-removebg-preview.png",
      "assets/images/essential-run-division-running-jacket-V68nHj__4_-removebg-preview.png",
    ],
    title: "Division",
    price: 120,
    size: 12,
    color: [
      Color(0xFF8BC34A),
      Color(0xFFF6625E),
      Color(0xFFD81B60),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFFFFFFF),
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 6,
    image: [
      "assets/images/louis-vuitton-H_1-removebg-preview.png",
      "assets/images/louis-vuitton-HH_1-removebg.png",
    ],
    title: "Feragamo",
    price: 120,
    size: 12,
    color: [
      Color(0xFF80CBC4),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFFF80AB),
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 7,
    image: [
      "assets/images/FAA434AERKF1BW2_01_large-grey (1).png",
      "assets/images/FAA434AERKF1BW2_04_large-grey.png",
      "assets/images/FAA434AERKF1BW2_02_large-grey.png",
      "assets/images/FAA434AERKF1BW2_03_large-grey-removebg-preview (1).png",
    ],
    title: "Chanel",
    price: 234,
    size: 8,
    color: [
      Color(0xFFD81B60),
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    cardColor2: Color(0xFFFFEB3B),
    description:
        "Coach prides itself on providing customers with affordable luxury."
        " This American brand has long dominated the handbag market with its timeless designs, high-quality leather, remarkable stitch work",
    illustration: "Casual Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 8,
    title: "Kate Spade",
    price: 120,
    size: 12,
    description:
        "Louis Vuitton (LV) is a 160-year-old French company that started off creating canvas travel cases and luggage pieces. One of the brand's most "
        "iconic designs is the Speedy, designed for Audrey Hepburn in 1965, which subsequently became one of the brand's signature styles",
    image: [
      "assets/images/FF8692A5HDF1BGW_01_large-grey.png",
      "assets/images/FF8692A5HDF1BGW_02_large-grey.png",
      "assets/images/FF8692A5HDF1BGW_03_large-grey-removebg-preview.png",
      "assets/images/FF8692A5HDF1BGW_99_large-grey-removebg-preview.png",
    ],
    color: [Color(0xFFFFC5C5)],
    cardColor2: Color(0xFF9FA8DA),
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 9,
    title: "Hermes",
    price: 234,
    size: 10,
    description:
        "Hermes prides itself on providing customers with affordable luxury. "
        "This American brand has long dominated the handbag market with its timeless designs, high-quality leather, remarkable stitch work",
    image: [
      "assets/images/FJ7116A8GFF1BW1_01_large-grey-removebg-preview.png",
      "assets/images/FJ7116A8GFF1BW1_02_large-grey-removebg-preview.png",
      "assets/images/FJ7116A8GFF1BW1_99_large-grey-removebg-preview.png",
    ],
    color: [Color(0xFFCDDC39)],
    cardColor2: Color(0xFF8D6E63),
    illustration: "Hand Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 10,
    title: "Fendi",
    price: 454,
    size: 11,
    description:
        "Some of the core styles include the Neverfull and the Alma bag,"
        " but the brand has become known for creating fresh new looks every season thanks to its young design staff",
    image: [
      "assets/images/FJ7107AC5ZF10B2_01_large-grey-removebg-preview.png",
      "assets/images/FJ7107AC5ZF10B2_02_large-grey-removebg-preview.png",
      "assets/images/FJ7107AC5ZF10B2_04_large-grey-removebg-preview.png",
    ],
    color: [Color(0xFFF6625E)],
    cardColor2: Color(0xFFECEFF1),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 11,
    title: "Balenciaga",
    price: 120,
    size: 12,
    description: "Kate Spade arrived on the fashion scene in 1993, "
        "but she honed her eye for fashion as an accessories editor for Mademoiselle.",
    image: [
      "assets/images/FPJ797AD9OF1BW3_01_large-grey-removebg-preview.png",
      "assets/images/FPJ797AD9OF1BW3_99_large-grey-removebg-preview.png",
      "assets/images/FPJ797AD9OF1BW3_02_large-grey-removebg-preview.png",
      "assets/images/FPJ797AD9OF1BW3_02_large-grey-removebg-preview (1).png",
    ],
    color: [Color(0xFF80CBC4)],
    cardColor2: Color(0xFFA1887F),
    illustration: "fashionable",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 12,
    title: "Juvenile",
    price: 234,
    size: 12,
    description:
        "Accomplished ready-to-wear and menswear designer Marc Jacobs launched his"
        " own handbag line in 2000 and continues to oversee both Louis Vuitton and his own brand. By 2003,"
        " Marc Jacobs had elevated Louis Vuitton to arguably the most coveted brand in the world",
    image: [
      "assets/images/FS7431AFLRF0QD1_01_large-grey-removebg-preview.png",
      "assets/images/FS7431AFLRF0QD1_02_large-grey-removebg-preview.png",
      "assets/images/FQ7205AFLRF0QD1_01_large-grey-removebg-preview.png",
    ],
    color: [Color(0xFF80CBC4)],
    cardColor2: Color(0XFFFFCCBC),
    illustration: "innovative",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 13,
    title: "Fendi",
    price: 234,
    size: 12,
    description:
        "This product is made with Primegreen, a series of high-performance recycled materials "
        "It's cut from durable material that's dirt- and water-resistant so it can protect "
        "your gear no matter where your plans take you. Dial in the perfect fit with the padded adjustable shoulder strap,"
        " or just grab it by the haul handles and go when time is of the essence.",
    image: [
      "assets/images/FS7102AC6AF0GME_01_large-grey-removebg-preview.png",
      "assets/images/FS7102AC6AF0GME_02_large-grey-removebg-preview.png",
    ],
    color: [Color(0xFF836DB8)],
    cardColor2: Color(0xFFB0BEC5),
    illustration: "innovative",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 14,
    title: "K.Spade",
    price: 234,
    size: 12,
    description:
        "Accomplished ready-to-wear and menswear designer Marc Jacobs launched his"
        " own handbag line in 2000 and continues to oversee both Louis Vuitton and his own brand. By 2003,"
        " Marc Jacobs had elevated Louis Vuitton to arguably the most coveted brand in the world",
    image: [
      "assets/images/FE5065AC42F1BW6_01_large-grey-removebg-preview.png",
      "assets/images/FE5065AC42F1BW6_02_large-grey-removebg-preview.png",
      "assets/images/FE5065AC42F1BW6_04_large-grey-removebg-preview.png",
    ],
    color: [Color(0xFFF6625E)],
    cardColor2: Color(0XFFFFCCBC),
    illustration: "Duffel Bag",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 15,
    title: "Jailbreak",
    price: 234,
    size: 12,
    description:
        " our outfit is almost perfect, but it's missing one thing: pockets. Grab this adidas festival bag when you need some extra storage on the go. The front slip-in zip"
        " pocket keeps cards and an ID handy so you're ready when it's time to treat your crew to coffeeThis product is made with Primegreen, a series of high-performance recycled materials",
    image: [
      "assets/images/FZC828AD5NF0GME_02_large-grey-removebg-preview.png",
      "assets/images/FZC828AD5NF0GME_99_large-grey-removebg-preview.png",
      "assets/images/FZC828AD5NF0GME_02_large-grey-removebg-preview.png",
    ],
    color: [Color(0xFF80CBC4)],
    cardColor2: Color(0x8AFFFFFF),
    illustration: "Sport Gear",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Wear(
    id: 16,
    title: "Fenti",
    price: 234,
    size: 12,
    description:
        "Since 1972, the Trefoil has stood out on the streets. Carry on the tradition "
        "every time you load up this adidas backpack. Padded shoulder straps "
        "keep you comfortable no matter what you toss inside.This product is "
        "made with Primegreen, a series of high-performance recycled materials",
    image: [
      "assets/images/FXB979AD0DF13IZ_01_large-grey-removebg-preview.png",
      "assets/images/FXB979AD0DF13IZ_03_large-grey-removebg-preview.png",
      "assets/images/FXB979AD0DF13IZ_99_large-grey-removebg-preview.png",
      "assets/images/FXB974ADHDF1C20_01_large-grey-removebg-preview.png",
    ],
    color: [Color(0xffF0AEAF)],
    cardColor2: Color(0xFfa1887F),
    illustration: "Sport Aware",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  // Wear(
  //   id: 17,
  //   title: "Adidas Endurance",
  //   price: 234,
  //   size: 12,
  //   description:
  //       "here's something effortless about a Endurance bag. Maybe it's the weight off your shoulders. "
  //       "The buckle-and-forget-it attitude. Or, in the case of this adidas bag made in collaboration with HER Studio London, maybe it's the vibrant print that resembles a trip to the tropics. Stow all your valuables for the day, and start dreaming of dense jungles and sunny beaches, even if you're just taking a short trip to town.",
  //   image: [
  //     "assets/images/bag_4.png",
  //     "assets/images/bag_6.png",
  //     "assets/images/bag_7.png",
  //     "assets/images/bag_2.png",
  //   ],
  //   color: [Color(0XffF9EFB0)],
  //   cardColor2: Color(0xFFD84315),
  //   illustration: "Hike Backpack",
  //   rating: 4.8,
  //   isFavourite: true,
  //   isPopular: true,
  // ),
  // Wear(
  //   id: 18,
  //   title: "Adidas Classic",
  //   price: 234,
  //   size: 12,
  //   description:
  //       "We took a classic adidas backpack and shrunk it down into this micro bag. The zip main compartment"
  //       "is just big enough to stash your keys, cards or some other tiny must-haves. The best part? You can clip it onto a larger pack, so your small essentials don't get lost in the load.",
  //   image: ["assets/images/"],
  //   color: [Color(0xFFCDDC39)],
  //   cardColor2: Color(0xFFD84315),
  //   illustration: "Hike Backpack",
  //   rating: 4.8,
  //   isFavourite: true,
  //   isPopular: true,
  // ),
  // Wear(
  //   id: 19,
  //   title: "Flap Adidas",
  //   price: 234,
  //   size: 12,
  //   description:
  //       "We took a classic adidas backpack and shrunk it down into this micro bag. The zip main compartment"
  //       "is just big enough to stash your keys, cards or some other tiny must-haves. The best part? You can clip it onto a larger pack, so your small essentials don't get lost in the load.",
  //   image: ["assets/images/shoe-bag-removebg-preview.png"],
  //   color: [Color(0xffF0AEAF)],
  //   cardColor2: Color(0xFF69F0AE),
  //   illustration: "Hike Backpack",
  //   rating: 4.8,
  //   isFavourite: true,
  //   isPopular: true,
  // ),
  // Wear(
  //   id: 20,
  //   title: " Duffel Adidas",
  //   price: 234,
  //   size: 12,
  //   description:
  //       "We took a classic adidas backpack and shrunk it down into this micro bag. The zip main compartment"
  //       "is just big enough to stash your keys, cards or some other tiny must-haves. The best part? You can clip it onto a larger pack, so your small essentials don't get lost in the load.",
  //   image: ["assets/images/Shoe_Bag-removebg-preview.png"],
  //   color: [Color(0xffF0AEAF)],
  //   cardColor2: Color(0xFFCDDC39),
  //   illustration: "Hike Backpack",
  //   rating: 4.8,
  //   isFavourite: true,
  //   isPopular: true,
  // ),
  // Wear(
  //   id: 21,
  //   title: "Adidas Grey",
  //   price: 234,
  //   size: 12,
  //   description:
  //       "Accomplished ready-to-wear and menswear designer Marc Jacobs launched his"
  //       " own handbag line in 2000 and continues to oversee both Louis Vuitton and his own brand. By 2003,"
  //       " Marc Jacobs had elevated Louis Vuitton to arguably the most coveted brand in the world",
  //   image: ["assets/images/power-removebg-preview.png"],
  //   color: [Color(0xFF455668)],
  //   cardColor2: Color(0xffF0AEAF),
  //   illustration: "Travel Pack",
  //   rating: 4.8,
  //   isFavourite: true,
  //   isPopular: true,
  // ),
];
