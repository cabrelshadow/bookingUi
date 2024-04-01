import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 10,right: 10),
            child: Image.asset("assets/onboard.png"),
          ),
          SizedBox(height: 40,),
          Text("Let’s Find Your Sweet" ,

            style: TextStyle(
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),
          ),
          Text(" & Dream Place" ,

            style: TextStyle(
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: 30
            ),
          ),
          SizedBox(height: 15,),
          Text("Get the opportunity to stay that you dream",
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
                letterSpacing: 0.5

              ),
          ),

          Text(" of  at an affordable price",
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
                letterSpacing: 0.5

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 130,right: 130),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                  height: 8,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF2c67ff),
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  height: 8,
                  width: 14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color:  Color(0xFFD9D9D9),
                  ),
                ),
                Container(
                  height: 8,
                  width: 14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFD9D9D9),
                  ),
                )
              ],
            ),
          ),
        Padding(

          padding: const EdgeInsets.only(top: 50),
          child: InkWell(
            onTap: (){},
            child: Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0xFF2c67ff),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text("Let\'s Go",
                style: TextStyle(color: Colors.white,

                ),
              )),
            ),
          ),
        )
        ],
      ),
    );
  }
}
