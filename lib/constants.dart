import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

const kLightColor = Color(0xFFF1E6FF);
const kDarkColor = Color(0xFF6F35A5);

const pageDecoration = PageDecoration(
titleTextStyle: TextStyle(
  fontSize: 35.0,
  color: kDarkColor,
),
  bodyTextStyle: TextStyle(
    fontSize: 15.0
  ),
);

const dotsDecorator = DotsDecorator(
  activeColor: kDarkColor,
  size: Size.fromRadius(7.0),
  activeSize: Size.fromRadius(7.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
);

