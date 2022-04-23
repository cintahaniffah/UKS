import 'package:flutter/material.dart';
import 'package:kesehatan_app/components/rounded_button.dart';
import 'package:kesehatan_app/components/rounded_input.dart';
import 'package:kesehatan_app/components/rounded_pass_input.dart';
import 'package:kesehatan_app/constant/color.dart';
import 'package:kesehatan_app/pages/registerpage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double viewInsert = MediaQuery.of(context).viewInsets.bottom;
    double defaultLoginSize = size.height - (size.height * 0.2);
    double defaultRegisterSize = size.height - (size.height * 0.1);

    return Scaffold(
      body: Stack(
        children: [

          // LOGIN 
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
                'LOGIN',
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
              
              SizedBox(height: 10), 

              RoundedButton(
                title: 'Login',
                ),
            ],
           ),
          ),
         ),
        ),

        //REGISTER CONTAINER

        Align(
            alignment: Alignment.bottomCenter,
                child: Container(
                     width: double.infinity,
                     height: size.height * 0.1,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(70),
                         topRight: Radius.circular(70),
                       ),
                       color: KfiftyColor,
                     ),
                    
                    alignment: Alignment.center,
                    child : GestureDetector(
                      onTap: (){
                        Route route = MaterialPageRoute(builder: (context) => RegisterPage());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        "Belum punya akun?? Sign Up sekarang",
                        style: TextStyle(
                          color: KfourthColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16 ),
                      ),
                    ),
                ),
              )

        ],
      ) 
    );
  }
}