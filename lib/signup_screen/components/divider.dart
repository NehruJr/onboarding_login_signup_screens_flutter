import 'package:flutter/material.dart';
import 'package:onboarding_login_signup/constants.dart';

class signup_divider extends StatelessWidget {
  const signup_divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width *0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BuilddDivider(),
          SizedBox(width: size.width * 0.05,),
          Text('Or' ,style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 15.0 , color: kDarkColor) ,  ),
          SizedBox(width: size.width * 0.05,),
          BuilddDivider(),
        ],
      ),
    );
  }
  Widget BuilddDivider(){
    return Expanded(
      child: Divider(
        color: kDarkColor,
        height: 2.5,
      ),
    );
  }
}
