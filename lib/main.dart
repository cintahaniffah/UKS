import 'package:flutter/material.dart';
import 'package:kesehatan_app/constant/color.dart';
import 'package:kesehatan_app/pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return SplashScreen();
        } else {
          return MaterialApp(
          title: 'Aplikasi Data Kesehatan',
          home: LoginPage()      
          );       
        }
      }
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: KfiftyColor,
        body: Center(
          child: Container(
            width: 500.0,
            height: 500.0,
            child: Image.asset("assets/icon/doctor.png"),
            ),
          ),
        ),
      );
    }
}