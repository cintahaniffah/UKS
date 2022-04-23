import 'package:flutter/material.dart';
import 'package:kesehatan_app/components/rounded_button.dart';
import 'package:kesehatan_app/components/rounded_input.dart';
import 'package:kesehatan_app/components/rounded_pass_input.dart';
import 'package:kesehatan_app/constant/color.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;

    double viewInsert = MediaQuery.of(context).viewInsets.bottom;
    double defaultLoginSize = size.height - (size.height * 0.2);
    double defaultRegisterSize = size.height - (size.height * 0.1);

    return Scaffold(
      body: Stack(
        children: [
          Align(
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
                  fontSize: 30
                ),
              ),

              SizedBox(height: 40),

              Center(
                child: Container(
                  width: size.width * 1,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/signin.png"),
                     ),
                    ),
                  ),
                ),

              SizedBox(height: 40),

              RoundedInput(icon: Icons.mail, hint: 'Username'), 

              RoundedPassInput(hint: 'Password'), 

              RoundedPassInput(hint: 'Konfirmasi Password'),
              
              SizedBox(height: 30),

              RoundedButton(title: 'Sign Up')

            ],
           ),
          ),
         ),
        ),

        ]
      ),
    );
  }
}