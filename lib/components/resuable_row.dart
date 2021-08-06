import 'package:flutter/material.dart';

class reusableRow extends StatelessWidget {
  const reusableRow({
     this.login = true,
    required this.screen,
  }) ;
  final Widget screen;
  final bool login ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(login ? 'Don\'t have an account ?': 'Already Have an account' ),
        TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => screen,));}, child: Text(login ? 'Sign Up' : 'Sign in'))
      ],
    );
  }
}
