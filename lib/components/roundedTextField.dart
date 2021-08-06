import 'package:flutter/material.dart';
import 'package:onboarding_login_signup/components/textFieldContainer.dart';
import 'package:onboarding_login_signup/constants.dart';

class roundedTextField extends StatelessWidget {
  roundedTextField({Key? key, required this.icon, required this.label}) : super(key: key);
  final IconData icon;
  final String label ;

  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return textFieldContainer(
      child: TextFormField(
        cursorColor: kLightColor,
        decoration: InputDecoration(
          prefixIcon: Icon(icon) ,
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: true,
          fillColor: kLightColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none
        ),
      ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value){if (value!.isEmpty ||
            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value)) {
          return 'Enter a valid email!';
        }
        return null;
        },
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
