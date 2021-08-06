import 'package:flutter/material.dart';
import 'package:onboarding_login_signup/constants.dart';
import 'package:onboarding_login_signup/login_screen/login_screen.dart';
import 'package:onboarding_login_signup/onbaording_screen/onboarding_screens.dart';
import 'package:onboarding_login_signup/signup_screen/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
          colorScheme: ThemeData().colorScheme.copyWith(
            primary: kDarkColor,
            secondary: kLightColor,
          ),
      ),
      home: onboarding_screens(),
    );
  }
}
