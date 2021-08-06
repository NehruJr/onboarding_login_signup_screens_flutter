import 'package:flutter/material.dart';
import 'package:onboarding_login_signup/components/resuable_row.dart';
import 'package:onboarding_login_signup/components/roundedButton.dart';
import 'package:onboarding_login_signup/components/roundedPasswordField.dart';
import 'package:onboarding_login_signup/components/roundedTextField.dart';
import 'package:onboarding_login_signup/constants.dart';
import 'package:onboarding_login_signup/signup_screen/signup_screen.dart';

class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  _login_screenState createState() => _login_screenState();
}
class _login_screenState extends State<login_screen> {
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
                Image.asset('assets/images/login.jpg' ,),
                SizedBox(height: size.height * 0.07,),
                roundedTextField(icon: Icons.person, label: 'Your Email',),
                SizedBox(height: size.height * 0.0003,),
                roundedPasswordField(),
                SizedBox(height: size.height * 0.03,),
                roundedButton(text: 'LOGIN'),
                SizedBox(height: size.height * 0.0003,),
                reusableRow(screen: signup_screen(),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
