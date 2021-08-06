import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onboarding_login_signup/constants.dart';

class socialContainer extends StatelessWidget {
  const socialContainer({Key? key, required this.svg}) : super(key: key);
  final String svg ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: kDarkColor,
          width: 1,
        ),
        shape: BoxShape.circle
      ),
      child: SvgPicture.asset('assets/icons/$svg' , height: 20 , width:  20,color: kDarkColor,),
    );
  }
}
