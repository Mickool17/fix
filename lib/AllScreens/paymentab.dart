import 'package:fix/AllScreens/mainscreen.dart';
import 'package:fix/sweep.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class paymentrab extends StatelessWidget {
  static const String idScreen = "payment";
  const paymentrab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Get.to(MainScreen());
                  },
                  child: const Icon(Icons.arrow_back)),
            ],
          ),
          vertical,
          Text(
            "Payment",
            style:
                GoogleFonts.poppins(fontSize: 19, fontWeight: FontWeight.w800),
          ),
          vertical,
          Container(
            height: 160,
            width: 350.w,
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10.w,
                    height: 10,
                  ),
                  Text(
                    " Bowen taxi cash",
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                  Text(
                    " NGN 0.00",
                    style:
                        GoogleFonts.poppins(color: Colors.black, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30.h,
                    width: 120.w,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            "Add Funds",
                            style: GoogleFonts.poppins(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  )
                ],
              ),
            ),
          ),
          vertical,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Payment Methods",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
