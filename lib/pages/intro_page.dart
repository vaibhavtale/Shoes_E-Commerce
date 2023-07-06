import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            //  logo
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 30),
              child: Image.asset(
                "images/logo.png",
                height: 220,
                width: 300,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // Text
            Center(
                child: Text(
              "Just do it",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 55,
                  fontStyle: FontStyle.italic),
            )),

            SizedBox(
              height: 30,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Consistant Practice and Regular smart work on Improving the tactics of Sports makes The Olympiad.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
