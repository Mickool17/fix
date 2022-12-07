import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/car1.png"),fit: BoxFit.cover)),

          ),
          Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "REQUEST A RIDE",style: GoogleFonts.poppins(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w600),)

            ],
          ))
        ],
      ),
    );
  }
}