import 'package:flutter/material.dart';

Widget thindivider = Padding(
  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
  child: const ColoredBox(
    color: Colors.grey,
    child: SizedBox(
      height: 2,
      width: double.infinity,
    ),
  ),
);

Widget thickDivider =
    Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
    child: const ColoredBox(color: Color.fromARGB(255, 225, 221, 221),
    child: SizedBox(height: 5,
    width: double.infinity,),),);

String Shirt = "Asset/constant/blackshirt.jpg";
String Mug = "Asset/constant/cup.png";
String BlueTShirt = "Asset/constant/bluetshirt.jpg";
String BlackTShirt = "Asset/constant/2ndtshirt.jpg";
String Globe = "Asset/Image/globe.png";
String Verified = "Asset/Image/verified.png";
String Laptop = "Asset/Image/laptop.png";
String Headphone = "Asset/Image/headphone.png";
