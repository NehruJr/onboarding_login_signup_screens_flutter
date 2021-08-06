
import 'package:flutter/material.dart';
import 'package:onboarding_login_signup/components/textFieldContainer.dart';
import 'package:onboarding_login_signup/constants.dart';

class roundedPasswordField extends StatefulWidget {
  const roundedPasswordField({Key? key}) : super(key: key);

  @override
  _roundedPasswordFieldState createState() => _roundedPasswordFieldState();
}

 var _passwordController = TextEditingController();
  bool isPassword = true;

class _roundedPasswordFieldState extends State<roundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    return textFieldContainer(
      child: TextFormField(
        obscureText: isPassword,
        cursorColor: kLightColor,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock) ,
          suffix: GestureDetector(child: Icon(Icons.remove_red_eye) , onTap: (){setState(() {
            isPassword = !isPassword;
          });},),
          labelText: 'Password',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: true,
          fillColor: kLightColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none
          ),
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if( value!.length < 8 ){
            return 'Password isn\'t correct';
          }
          return null;
        },
      ),
    );
  }
}
