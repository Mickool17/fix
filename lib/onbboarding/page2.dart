import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/car3.png"),fit: BoxFit.cover)),

          ),
          Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "CONFIRM YOUR DRIVER",style: GoogleFonts.poppins(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w600),)

            ],
          ))
        ],
      ),
    );
  }
}