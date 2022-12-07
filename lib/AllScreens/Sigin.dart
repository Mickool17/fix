import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fix/AllScreens/forgetpassword.dart';
import 'package:fix/AllScreens/mainscreen.dart';
import 'package:fix/AllScreens/signupscreen.dart';
import 'package:fix/main.dart';
import 'package:fix/sweep.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers.dart';

class Signinscreen extends StatefulWidget {
  static String idScreen = "Signinscreen";
  Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  final PixelControllers textControllers = Get.put(PixelControllers());
  bool _isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/car2.png"), fit: BoxFit.cover)),


                    // bluring background image usind imagefilter from dart ui
                    child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          )),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 150.h,
                  ),
                  Text(
                    "Login To Account",
                    style: GoogleFonts.poppins(
                        fontSize: 24.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),

                  SizedBox(
                    height: 50.h,
                  ),
                  //Email Field
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
                              Icons.mail,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            hintText: "Email"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  //Password Field
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        obscureText: _isObscure,
                        controller:
                            textControllers.passwordTextEditingController.value,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.password,
                              color: Colors.black,
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                            border: InputBorder.none,
                            hintText: "Password"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: GestureDetector(
                          onTap: (() {
                            Get.to(forgotpassword());
                          }),
                          child: Text(
                            "Forget password ?",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  vertical,
                  //loginButton
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
                      } else if (textControllers
                          .passwordTextEditingController.value.text.isEmpty) {
                        displayToastMessage("Provide password ", context);
                      } else {
                        authenticateuser(context);
                      }
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  vertical,

                  Text(
                    "or login with",
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  vertical,
                  SizedBox(
                    width: 159.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [facebookpic, googlepic, Grouppic],
                    ),
                  ),
                  vertical,
                  GestureDetector(
                    onTap: (() {
                      Navigator.pushNamedAndRemoveUntil(
                          context, SignUp1.idScreen, (route) => false);
                    }),
                    child: GestureDetector(
                      onTap: (() {
                        Get.to(SignUp1(),
                            transition: Transition.cupertino,
                            duration: const Duration(seconds: 1));
                      }),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("New User ?",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                          Text("Create account",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void authenticateuser(BuildContext context) async {
    final User? firebaseUser = (await _firebaseAuth
            .signInWithEmailAndPassword(
                email: textControllers.emailTextEditingController.value.text,
                password:
                    textControllers.passwordTextEditingController.value.text)
            .catchError((errMsg) {
      displayToastMessage("Error : $errMsg", context);
    }))
        .user;
    if (firebaseUser != null) {
      micref.child(firebaseUser.uid);
      //saves info to database

      Navigator.pushNamedAndRemoveUntil(
          context, MainScreen.idScreen, (route) => false);
      displayToastMessage("Logged in succesfully", context);
    }
  }
}
