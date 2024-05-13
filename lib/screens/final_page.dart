import 'package:cinema/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FinalPage());
}

class FinalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(   // Added Container widget
          color: Color(0xFF212429),  // Added background color
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Payment completed successfully",

                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>WelcomeScreen()));
                    },
                    child: Text("Back to Welcome screen"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}