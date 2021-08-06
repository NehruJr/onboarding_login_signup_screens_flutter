import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_login_signup/login_screen/login_screen.dart';
import '../onbaording_screen/pages.dart';
import '../constants.dart';

class onboarding_screens extends StatefulWidget {
  const onboarding_screens({Key? key}) : super(key: key);


  @override
  _onboarding_screensState createState() => _onboarding_screensState();
}

void _intoLogin(context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => login_screen()),
  );
}

class _onboarding_screensState extends State<onboarding_screens> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          animationDuration: 180 ,
          pages: pages,
          onDone: () => _intoLogin(context),
          next: const Icon(Icons.arrow_forward , color:kDarkColor  ,),
          done: const Text('Done', style: TextStyle(color: kDarkColor ,fontWeight: FontWeight.w600)),
        dotsDecorator: dotsDecorator,
        ),
      ),
    );
  }
}
