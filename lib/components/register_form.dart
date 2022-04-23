import 'package:flutter/material.dart';
import 'package:kesehatan_app/components/rounded_button.dart';
import 'package:kesehatan_app/components/rounded_input.dart';
import 'package:kesehatan_app/components/rounded_pass_input.dart';
import 'package:kesehatan_app/constant/color.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
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
        opacity: islogin ? 0.0 : 1.0,
        duration: animationDuration * 5,
        child : Visibility(
            visible: !islogin,
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
                'SIGN UP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: KfourthColor,
                  fontSize: 3,
                ),
              ),

              SizedBox(height: 40),

              Center(
                child: Container(
                  width: size.width * 1,
                  height: size.height * 0.32,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/signup.png"),
                     ),
                    ),
                  ),
                ),

              SizedBox(height: 40),

              RoundedInput(icon: Icons.mail, hint: 'Username'), 

              RoundedPassInput(hint: 'Password'), 

              RoundedPassInput(hint: 'Konfirmasi Password'),
              
              SizedBox(height: 40),

              RoundedButton(title: 'Sign Up')

            ],
           ),
          ),
         ),
        ),
      ),
    );
  }
}