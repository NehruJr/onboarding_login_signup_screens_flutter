import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../constants.dart';


List<PageViewModel> pages = [
  PageViewModel(
    title: 'ORDER ONLINE',
    body: 'Make an order sitting on a sofa'
        '\nand choose online',
    image: Image.asset('assets/images/order.jpg'),
    decoration: pageDecoration,
  ),PageViewModel(
    title: 'DELIVERY SERVICE',
    body: 'Modern delivering technologies'
        '\nshipping to the path of your \n apartment',
    image: Image.asset('assets/images/delivery.jpg'),
    decoration: pageDecoration,
  ),
];
