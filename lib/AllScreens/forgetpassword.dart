import 'package:fix/AllScreens/Sigin.dart';
import 'package:fix/controllers.dart';
import 'package:fix/sweep.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class forgotpassword extends StatelessWidget {
  static String idScreen = "forgotpassword";
  forgotpassword({super.key});
  final PixelControllers textControllers = Get.put(PixelControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/car5.jpg"),
                      fit: BoxFit.cover)),
                      ),
          SingleChildScrollView(
            child: Column(
              children: [
                vertical,
                vertical,
                vertical,
                GestureDetector(
                  onTap: (() {
                    Get.to(Signinscreen(),
                        transition: Transition.cupertino,
                        duration: const Duration(seconds: 1));
                  }),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                vertical,
                vertical,
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      children: [
                        Text("Forgot your Password ?          ",
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              color: Colors.white,
                            )),
                        vertical,
                        vertical,
                        Text("Enter your email",
                            style: GoogleFonts.poppins(
                                fontSize: 27.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                vertical,
                vertical,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: textControllers
                          .forgotpasswordTextEditingController.value,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_sharp,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "Enter your Email"),
                    ),
                  ),
                ),
                vertical,
                vertical,
                MaterialButton(
                    height: 40.h,
                    minWidth: 250.w,
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text('Code Succesfully sent to your email'),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height -500,
                            right: 20,
                            left: 20)));
                  },
                      child:
                      Text(
                        "Reset",
                        style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      
                    )
                )
        ]),
          )
        ]));
                    }
              
          
  
  }

