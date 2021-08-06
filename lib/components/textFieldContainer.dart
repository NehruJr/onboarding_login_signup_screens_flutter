import 'package:flutter/material.dart';

class textFieldContainer extends StatelessWidget {
  const textFieldContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height *0.09,
      padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
      width: size.width * 0.8,
      child: child,
    );
  }
}

