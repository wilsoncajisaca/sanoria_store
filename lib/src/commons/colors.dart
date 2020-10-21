import 'package:flutter/material.dart';

const Color principalColor = Color(0xff393551); //Color(0xff44c062);
const Color backgroundColorContainer = Color(0xffbde8c9);
const Color green50 = Color(0xffeff9f1);
const Color blackCustom = Color(0xff2a2a2f);
const Color black06 = Color(0xfff8f8f8);
const Color blueWater = Color(0xff07b2f9);

const Gradient greenGradient = LinearGradient(
  colors: [
    backgroundColorContainer,
    Colors.white,
  ],
  begin: FractionalOffset(0.0, 0.0),
  end: FractionalOffset(0.7, 0.0),
  stops: [0.0, 1.0],
  tileMode: TileMode.clamp,
);

const List<BoxShadow> shadowBox = <BoxShadow>[
  BoxShadow(
    color: Colors.black12,
    blurRadius: 10,
    offset: Offset(6.0, 4.0),
  )
];
