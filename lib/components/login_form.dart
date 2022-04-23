
import 'package:flutter/material.dart';
import 'package:kesehatan_app/components/rounded_button.dart';
import 'package:kesehatan_app/components/rounded_input.dart';
import 'package:kesehatan_app/components/rounded_pass_input.dart';
import 'package:kesehatan_app/constant/color.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
    @required this.islogin,
    @required this.animationDuration,
    @required this.size,
    @required this.defaultLoginSize,
  }) : super(key: key);

  final bool islogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: islogin ? 1.0 : 0.0, 
      duration: animationDuration * 4, 
      child: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: defaultLoginSize,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                'LOGIN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: KprimaryColor,
                  fontSize: 30
                ),
              ),

              SizedBox(height: 40),

              Center(
                child: Container(
                  width: size.width * 1,
                  height: size.height * 0.32,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/login.png"),
                     ),
                    ),
                  ),
                ),

              SizedBox(height: 40),

              RoundedInput(icon: Icons.mail, hint: 'Username'), 

              RoundedPassInput(hint: 'Password'),
              
              SizedBox(height: 40), 

              RoundedButton(title: 'Login',)

            ],
           ),
          ),
         ),
        ),
      );
  }
}