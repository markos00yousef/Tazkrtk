library gradient_slide_to_act;
import 'package:flutter/material.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration:BoxDecoration(
          color: Colors.black,

          image: DecorationImage(
              image: AssetImage("images/movieposters.png"),
              opacity: 0.4,
              fit: BoxFit.cover


          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Tazkartak",
            style: TextStyle(
              color: Colors.yellowAccent,
              fontSize: 50,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,

            ),
            ),
            SizedBox(height: 20,),
            Text("Grap your tickets now",
              style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),

            InkWell(
              //////method route to home screen
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>HomeScreen()));
              },
              child:Container(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                decoration: BoxDecoration(
                  color:Colors.black.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[BoxShadow(color: Colors.yellowAccent, blurRadius: 8, spreadRadius: 1,),
                  ],

                ),
                /////////////button style
                child: Text("Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
            )

          ],
        )
      ),
    );
  }
}
