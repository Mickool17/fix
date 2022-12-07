import 'dart:ui';

import 'package:fix/AllScreens/Sigin.dart';
import 'package:fix/AllScreens/signupscreen.dart';
import 'package:fix/sweep.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Getstarted extends StatelessWidget {
  static const String idScreen = "Getstarted";
  const Getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/car4.png"), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          )),
        ),
        Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
               
  
             
                Text(
                  "BOWEN TAXI",
                  style: GoogleFonts.poppins(
                      fontSize: 37,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                    height: 250.h,
                    width: 250.h,
                    child: Image.asset(
                      "images/bowen.png",
                    )),
                vertical,
                vertical,
                MaterialButton(
                  height: 40.h,
                  minWidth: 250.w,
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  onPressed: () {
                    Get.to(SignUp1(),transition: Transition.cupertino,duration: Duration(milliseconds: 700));
                  },
                  child: Text(
                    "Get started ",
                    style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                vertical,
                GestureDetector(
                    onTap: (() {
                        Get.to(Signinscreen(),transition: Transition.cupertino,duration: Duration(seconds: 1));
                    }),
                    child: Text(
                      "Already have an account ? Sign in",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
