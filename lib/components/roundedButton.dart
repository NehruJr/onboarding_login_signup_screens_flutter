import 'package:flutter/material.dart';
import 'package:onboarding_login_signup/constants.dart';

class roundedButton extends StatelessWidget {
  const roundedButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15 , horizontal: 25),
        child: ElevatedButton(
            onPressed: () {},
            child: Text(text),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29.0),
                        )))),
      ),
    );
  }
}
