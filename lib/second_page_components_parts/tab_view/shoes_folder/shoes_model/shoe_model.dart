import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

// HEADPHONE/
class Shoe {
  final String imagee, titlee, descriptione, illustration;
  final int pricee, sizee, ide;
  final Color colore, cardColor2e;

  Shoe(
      {@required this.ide,
      @required this.imagee,
      @required this.titlee,
      @required this.pricee,
      // @required this.description,
      @required this.sizee,
      @required this.colore,
      @required this.cardColor2e,
      @required this.descriptione,
      @required this.illustration});
}

List<Shoe> shoes = [
  Shoe(
      ide: 1,
      titlee: "CHANEL",
      pricee: 234,
      sizee: 8,
      descriptione:
          "Game. Set. Match. These women's tennis-inspired shoes elevate your style with a stacked midsole for extra height and a chunky profile. The upper is made of supple leather for a clean, minimalist look",
      imagee: "assets/images/adidas.png",
      colore: Color(0xFFD3A984),
      cardColor2e: Color(0XffF9EFB0),
      illustration: "Sport Design"),
  Shoe(
      ide: 2,
      titlee: "JIMMY CHOO",
      pricee: 120,
      sizee: 12,
      descriptione:
          "When you find a workout style that makes you feel alive, it’s like unlocking a door to your full potential. Make the time to lace up your gym shoes and get your workout on. Reebok has athletic shoes made for training, studio, running, weightlifting and more. Whether you’re a well-seasoned athlete or a fitness newbie just learning the ropes, there are athletic shoes for you. Reebok’s classics shoes are born from sports straight out of the 80s and 90s—bold retro sneakers that remain legends on the basketball court, tennis court, ",
      imagee: "assets/images/shoeman_9.png",
      colore: Color(0xFFE6EE9C),
      cardColor2e: Color(0xFFD84315),
      illustration: "Jungle Boot"),
  Shoe(
      ide: 3,
      titlee: "ADIDAS",
      pricee: 234,
      sizee: 10,
      descriptione:
          "All our workout clothes offer performance-driven design, elevated fabrics and comfort to power you through your sessions feeling your best. From ventilated, technologically designed workout clothes for high intensity workouts to stylish and comfy cool-down looks fashionable enough to hang out in all day, we’ve got you covered with a wide range of sizes and styles. Our collection of workout clothes",
      imagee: "assets/images/RC3.jpg",
      colore: Color(0xffF6E475),
      cardColor2e: Color(0xFFFFFFFFF),
      illustration: "Sport Aware"),
  Shoe(
      ide: 4,
      titlee: "BRAIN ATWOOD",
      pricee: 454,
      sizee: 11,
      descriptione:
          "with a deep range of designer and influencer collaborations to classic retro looks, is all about performance-driven style that stands out and supports you while you work your tail off.",
      imagee: "assets/images/womanshoe_3.png",
      colore: Color(0xffF6E475),
      cardColor2e: Color(0xFF69F0AE),
      illustration: "Exclusive"),
  Shoe(
      ide: 5,
      titlee: "BLUEMARINE",
      pricee: 120,
      sizee: 12,
      descriptione:
          " Reebok UNLOCKED is the loyalty program that brings the perks. Unlock free shipping and returns, discounts, rewards and more. You in?",
      imagee: "assets/images/womanshoe_4.png",
      colore: Color(0xffF0AEAF),
      cardColor2e: Color(0xffF6E475),
      illustration: "Heels"),
  Shoe(
      ide: 6,
      titlee: "R. CAVALLI",
      pricee: 234,
      sizee: 12,
      descriptione:
          "When you find a workout style that makes you feel alive, it’s like unlocking a door to your full potential. Make the time to lace up your gym shoes and get your workout on. Reebok has athletic shoes made for training, studio, running, weightlifting and more. Whether you’re a well-seasoned athlete or a fitness newbie just learning the ropes",
      imagee: "assets/images/womanshoe_2.png",
      colore: Color(0xffF6E475),
      cardColor2e: Color(0XffFDDCC1),
      illustration: "Casual Heals"),
];

// String dummyText =
//     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
