import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shopiee/constants/images_constants.dart';

class ContainerPosterDetails2{
  final String images;
  final String text;
  final String price;
  final String disprice;
  final String percen;

  ContainerPosterDetails2({
    required this.images,
    required this.text,
    required this.price,
    required this.disprice,
    required this.percen,
});
}
  List<ContainerPosterDetails2>containerposterwomenaccessories=[
    ContainerPosterDetails2(images: imgbg152, text:"Intellilens Cat Eye Blue Cut Computer Glasses for Women ", price: "\u{20B9}699",disprice: "\u{20B9}2,999",percen:"77 % off"),
    ContainerPosterDetails2(images: imgbg153, text: "Fristo Women's Handbag (FRB-315_Red)", price: "\u{20B9}497", disprice: "\u{20B9}2,599", percen: "81 % off"),
    ContainerPosterDetails2(images: imgbg154, text: "Seven Analogue Women's & Girl's Watch (White Dial Gold Colored Strap)", price: "\u{20B9}1,799", disprice: "\u{20B9}2,592", percen: "40 % off"),
    ContainerPosterDetails2(images: imgbg155, text: "iSWEVEN Women's & Girl's Wool Beanie Cap (Pack of 1)", price:"\u{20B9}537" , disprice:"\u{20B9}1,299" , percen: "59 % off"),
  ];