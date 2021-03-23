import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

// @immutable
class Showcase {
  final String image, title, owner, description;
  final int price, size, id, onRatingChanged, rating, numOfReviews;
  final Color color, cardColor2;

  const Showcase(
      {@required this.image,
      @required this.title,
      @required this.owner,
      @required this.price,
      @required this.size,
      @required this.id,
      @required this.color,
      @required this.cardColor2,
      @required this.description,
      @required this.onRatingChanged,
      @required this.rating,
      @required this.numOfReviews});
}

const List<Showcase> demoshowcases = [
  Showcase(
      image: 'assets/images/check1.jpg',
      title: 'FEMALE ITALIAN SHOE',
      owner: 'BELENCIAGA',
      description:
          "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
      price: 330,
      size: 12,
      id: 1,
      rating: 21,
      cardColor2: Color(0xFF69F0AE),
      color: Color(0xFFD3A984)),
  Showcase(
    image: 'assets/images/gloden.jpg',
    title: 'FEMALE ITALIAN SHOE',
    owner: 'BELENCIAGA',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    price: 360,
    size: 13,
    id: 2,
    rating: 23,
    color: Color(0xFFFFFFFF),
    cardColor2: Color(0xFFF6625E),
  ),
  Showcase(
    image: 'assets/images/irene.jpg',
    title: 'FENDI COLLECTION',
    owner: 'SALVATORE',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    price: 234,
    size: 12,
    rating: 31,
    id: 3,
    color: Color(0xFFD84315),
    cardColor2: Color(0xFFF6625E),
  ),
  Showcase(
    image: 'assets/images/gucci_one.jpg',
    title: 'LAURA COLLECTION',
    owner: 'GUCCI',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    price: 234,
    size: 12,
    id: 4,
    rating: 87,
    color: Color(0xFFCDDC39),
    cardColor2: Color(0xFFCDDC39),
  ),
  Showcase(
    image: 'assets/images/img_3.jpg',
    title: 'FASHION ',
    owner: 'PRADA BAG',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    price: 234,
    size: 12,
    id: 5,
    color: Color(0xffF6E475),
    cardColor2: Color(0xFFD84315),
  ),
  Showcase(
    id: 6,
    rating: 11,
    price: 234,
    size: 12,
    image: 'assets/images/timber.jpg',
    title: 'RUN WAY ',
    owner: 'LAURA COLLECTION',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    color: Color(0xFFACACAC),
    cardColor2: Color(0xFFD84315),
  ),
  Showcase(
    id: 7,
    rating: 20,
    price: 234,
    size: 12,
    image: 'assets/images/hublot.jpg',
    title: 'YEE SNEAKERS  ',
    owner: 'KANYE COLLECTION',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    color: Color(0xffF6E475),
    cardColor2: Color(0xFF69F0AE),
  ),
  Showcase(
    id: 8,
    rating: 21,
    price: 234,
    size: 12,
    image: 'assets/images/adida.jpg',
    title: 'NIKE AIR   ',
    owner: 'NIKE COLLECTION',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    color: Color(0xFF80CBC4),
    cardColor2: Color(0xFFCDDC39),
  ),
  Showcase(
    image: 'assets/images/black_shoe.jpg',
    title: 'NIKE SNEAKERS  ',
    owner: 'CHUNK COLLECTION',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    price: 234,
    size: 12,
    id: 9,
    rating: 90,
    color: Color(0xFFFFC5C5),
    cardColor2: Color(0xFFCDDC39),
  ),
  Showcase(
    image: 'assets/images/Nike.jpg',
    title: ' AIR JORDAN',
    owner: 'SALVATORE',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    price: 194,
    size: 12,
    id: 10,
    rating: 44,
    color: Color(0xFFAEAEAE),
    cardColor2: Color(0xffF0AEAF),
  ),
  Showcase(
    image: 'assets/images/img_1.jpg',
    title: 'AFRICAN FABRIC  ',
    owner: 'ADIRE COLLECTION',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    price: 404,
    size: 12,
    id: 11,
    rating: 33,
    color: Color(0xFFAEAEAE),
    cardColor2: Color(0xFFCDDC39),
  ),
  Showcase(
    image: 'assets/images/model.jpg',
    title: 'BEATZ HEADPHONE',
    owner: 'DR DRE',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    price: 340,
    size: 12,
    id: 12,
    rating: 54,
    color: Color(0xFFAEAEAE),
    cardColor2: Color(0xFFCDDC39),
  ),
  Showcase(
    image: 'assets/images/xavier.jpg',
    title: 'CLASSIC SHOE',
    owner: 'CHANNEL',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    price: 110,
    size: 12,
    id: 13,
    rating: 21,
    color: Color(0xFFAEAEAE),
    cardColor2: Color(0xffF0AEAF),
  ),
  Showcase(
    image: 'assets/images/img_4.jpg',
    title: 'NIGHT VISION ',
    owner: 'ESCADA',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    price: 234,
    size: 12,
    id: 14,
    rating: 21,
    color: Color(0XffFDDCC1),
    cardColor2: Color(0xFFCDDC39),
  ),
  Showcase(
    image: 'assets/images/night_gown.jpg',
    title: 'DOLCE & GABANA',
    owner: 'D\&\G',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    price: 607,
    size: 12,
    id: 15,
    rating: 12,
    color: Color(0xFFAEAEAE),
    cardColor2: Color(0xffF0AEAF),
  ),
  Showcase(
    image: 'assets/images/glasses.jpg',
    title: 'LUXURY VISION',
    owner: 'VALENTINO',
    description:
        "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
    price: 423,
    size: 12,
    id: 16,
    rating: 21,
    color: Color(0xFF455668),
    cardColor2: Color(0xffF0AEAF),
  ),
];
