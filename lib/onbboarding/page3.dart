import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/carnew1.jpg"),fit: BoxFit.cover)),

          ),
          Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "TRACK YOUR RIDE",style: GoogleFonts.poppins(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w600),)

            ],
          ))
        ],
      ),
    );
  }
}