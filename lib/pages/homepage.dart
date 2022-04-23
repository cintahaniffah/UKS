import 'package:flutter/material.dart';
import 'package:kesehatan_app/components/rounded_input.dart';
import 'package:kesehatan_app/constant/color.dart';

class Homepage extends StatelessWidget {
  const Homepage({ Key key }) : super(key: key);

   @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double defaultLoginSize = size.height - (size.height * 0.2);
  
    return Scaffold(
      body: Stack(
         children: [
           Container(
            height: size.height * .4,
            decoration: BoxDecoration(
              color: KfiftyColor,
            ),
          ),
      
            SizedBox(height: 10), 

            SafeArea(
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                        'Selamat Datang, User !!!!',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: KfourthColor,
                          fontSize: 20
                        ),
                      ),
                    SizedBox(height: 30),
                    Text(
                        'Kesehatan Siswa Itu sangat Penting dan berpengaruh,',
                         textAlign: TextAlign.left,
                         style: TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.bold,
                         fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                         'Ayo Data Kesehatan diri sendiri..',
                         textAlign: TextAlign.left,
                         style: TextStyle(
                         color: Colors.black87,
                         fontWeight: FontWeight.bold,
                         fontSize: 15,
                        ),
                      ), 
                  ],
                ),
              )
            )
          ),

          SizedBox(height: 10), 

          
       
              
                  
              
         ]
      ),
    );
  }
}