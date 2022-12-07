import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class freestyle extends StatelessWidget {
   static const String idScreen = "freestyle";
  const freestyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:AssetImage("images/Bowengatepic.jpeg"),
                      fit: BoxFit.cover)),
          //             child: BackdropFilter(
          // filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          // child: Container(
          //   decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          // )),),
          ),
          Column(
            
         
            children: [
              SizedBox(height: 800,),
              Row(
                children: [
                  SizedBox(width: 250,),
                  Container
                  (
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      
                      borderRadius: BorderRadius.all(Radius.circular(12),)),
                    child: Center(child: Text("GET STARTED",style: GoogleFonts.poppins(color: Colors.black),))),
                ],
              ),
            ],
          )
        ],
        
        
        ),
        
        );
        
        
  }
}