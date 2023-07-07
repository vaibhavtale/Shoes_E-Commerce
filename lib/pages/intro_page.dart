import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              Text(
                "Just do it",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 55,
                    fontStyle: FontStyle.italic),
              ),

              SizedBox(
                height: 30,
              ),

              Text(
                "Brand new sneaker's and kicks made with premium quality.",
                style: TextStyle(fontSize: 16, color: Colors.grey,),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 50,),

              GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),),),
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
