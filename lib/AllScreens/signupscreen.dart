import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fix/AllScreens/Sigin.dart';
import 'package:fix/AllScreens/getstarted.dart';
import 'package:fix/controllers.dart';
import 'package:fix/sweep.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class SignUp1 extends StatelessWidget {
  static const String idScreen = "SignUp1";

  final PixelControllers textControllers = Get.put(PixelControllers());

  SignUp1({super.key});

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
                      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          )),),
          SingleChildScrollView(
            child: Column(
              children: [
                vertical,
                vertical,
                vertical,
                GestureDetector(
                  onTap: (() {
                    Get.to(const Getstarted(),
                        transition: Transition.cupertino,duration: const Duration(seconds: 1));
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
                        Text("Create your account          ",
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              color: Colors.white,
                            )),
                        vertical,
                        Text("Whats your name ?",
                            style: GoogleFonts.poppins(
                                fontSize: 20.sp,
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
                      controller:
                          textControllers.firstnameTextEditingController.value,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "First Name"),
                    ),
                  ),
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
                      controller:
                          textControllers.lastnameTextEditingController.value,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "Lastname"),
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
                    if (textControllers
                            .firstnameTextEditingController.value.text.length <
                        3) {
                      displayToastMessage(
                          "Name must be at least 3 letters", context);
                    } else if (textControllers
                            .lastnameTextEditingController.value.text.length <
                        3) {
                      displayToastMessage(
                          "Name must be at least 3 letters", context);
                    } else {
                      Navigator.pushNamedAndRemoveUntil(
                          context, SignUp2.idScreen, (route) => false);
                    }
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// second screen
///
//////
///
class SignUp2 extends StatelessWidget {
  static const String idScreen = "SignUp2";
  final PixelControllers textControllers = Get.put(PixelControllers());

  SignUp2({super.key});

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
                      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          )),),
          Column(
            children: [
             vertical,
                vertical,
                vertical,
              GestureDetector(
                onTap: (() {
              Get.to(SignUp1(),
                      transition: Transition.cupertino,duration: const Duration(seconds: 1));
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
                      Text("Create your account          ",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                          )),
                      vertical,
                      Text("And your email ?      ",
                          style: GoogleFonts.poppins(
                              fontSize: 20.sp,
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
                    controller:
                        textControllers.emailTextEditingController.value,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                        hintText: "Email address "),
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
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  if (!textControllers.emailTextEditingController.value.text
                      .contains("@")) {
                    displayToastMessage("Email is not valid", context);
                  } else {
                    Get.to(SignUp3(),
                      transition: Transition.cupertino,duration: const Duration(seconds: 1));
                  }
                },
                child: Text(
                  "Next",
                  style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//THIRD SCREEN
////
///
///
///
class SignUp3 extends StatelessWidget {
  static const String idScreen = "SignUp3";

  final PixelControllers textControllers = Get.put(PixelControllers());

  SignUp3({super.key});

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
                      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          )),),
          Column(
            children: [
             vertical,
                vertical,
                vertical,
              GestureDetector(
                onTap: (() {
                 Get.to(SignUp2(),
                      transition: Transition.cupertino,duration: const Duration(seconds: 1));
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
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        
                        Text("Create your account                      ",
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              color: Colors.white,
                            )),
                        vertical,
                        Text("   And your phone number ?",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
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
                    controller:
                        textControllers.phoneTextEditingController.value,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                        hintText: "Phone number  "),
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
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  if (textControllers
                      .phoneTextEditingController.value.text.isEmpty) {
                    displayToastMessage("Phone number is required", context);
                  } else {
                     Get.to(SignUp4(),
                      transition: Transition.cupertino,duration: const Duration(seconds: 1));
                  }
                },
                child: Text(
                  "Next",
                  style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

/// FOUTH SCREEN OF SIGNUP PAGE
///
///
///
///
class SignUp4 extends StatelessWidget {
  static const String idScreen = "SignUp4";

  final PixelControllers textControllers = Get.put(PixelControllers());

  SignUp4({super.key});

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
                      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          )),),
          SingleChildScrollView(
            child: Column(
              children: [
              vertical,
                vertical,
                vertical,
                GestureDetector(
                  onTap: (() {
                   Get.to(SignUp3(),
                        transition: Transition.cupertino,duration: const Duration(seconds: 1));
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
                        Text("Create your account          ",
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              color: Colors.white,
                            )),
                        vertical,
                        Text("Create a password ",
                            style: GoogleFonts.poppins(
                                fontSize: 20.sp,
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
                      controller:
                          textControllers.passwordTextEditingController.value,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "Password"),
                    ),
                  ),
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
                      controller:
                          textControllers.password2TextEditingController.value,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "Confirm password"),
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
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    if (textControllers
                            .passwordTextEditingController.value.text !=
                        textControllers
                            .password2TextEditingController.value.text) {
                      displayToastMessage(
                          "Passwords are not the same ,confirm your password ",
                          context);
                    } else {
                      registerNewUser(context);
                    }
                  },
                  child: Text(
                    "SignUp",
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  final FirebaseAuth_firebaseAuth = FirebaseAuth.instance;

  void registerNewUser(BuildContext context) async {
    final User? firebaseUser =
        (await FirebaseAuth_firebaseAuth.createUserWithEmailAndPassword(
      email: textControllers.emailTextEditingController.value.text,
      password: textControllers.passwordTextEditingController.value.text,
    ).catchError((errMsg) {
      displayToastMessage("Error : " + errMsg.toString(), context);
    }))
            .user;

    if (firebaseUser != null) {
      micref.child(firebaseUser.uid);
      //saves info to database
      Map userDataMap = {
        "firstname":
            textControllers.firstnameTextEditingController.value.text.trim(),
        "lastname":
            textControllers.lastnameTextEditingController.value.text.trim(),
        "phone": textControllers.phoneTextEditingController.value.text.trim(),
        "password":
            textControllers.passwordTextEditingController.value.text.trim(),
        "email": textControllers.emailTextEditingController.value.text.trim(),
      };
      micref.child(firebaseUser.uid).set(userDataMap);
      displayToastMessage("Account created succesfully sign in", context);

      Navigator.pushNamedAndRemoveUntil(
          context, Signinscreen.idScreen, (route) => false);
    } else {
      displayToastMessage("New user has not been created", context);
      //display error message
    }
  }
}

displayToastMessage(String message, BuildContext context) {
  Fluttertoast.showToast(msg: message);
}
