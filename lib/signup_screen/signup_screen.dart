import 'package:flutter/material.dart';
import 'package:onboarding_login_signup/components/resuable_row.dart';
import 'package:onboarding_login_signup/components/roundedButton.dart';
import 'package:onboarding_login_signup/components/roundedPasswordField.dart';
import 'package:onboarding_login_signup/components/roundedTextField.dart';
import 'package:onboarding_login_signup/login_screen/login_screen.dart';
import 'package:onboarding_login_signup/signup_screen/components/divider.dart';
import 'package:onboarding_login_signup/signup_screen/components/socialContainer.dart';

class signup_screen extends StatefulWidget {
  const signup_screen({Key? key}) : super(key: key);

  @override
  _signup_screenState createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/signup.jpg' ,),
                SizedBox(height: size.height * 0.07,),
                roundedTextField(icon: Icons.person, label: 'Your Email',),
                SizedBox(height: size.height * 0.0003,),
                roundedPasswordField(),
                SizedBox(height: size.height * 0.03,),
                roundedButton(text: 'SIGN UP'),
                SizedBox(height: size.height * 0.0003,),
                reusableRow(screen: login_screen(),login: false,),
                signup_divider(),
                SizedBox(height: size.height * 0.0003,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [socialContainer(svg: 'google-plus.svg'),
                  socialContainer(svg: 'facebook.svg'),
                  socialContainer(svg: 'twitter.svg'),
                ],),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
