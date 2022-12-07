import 'package:fix/AllScreens/getstarted.dart';
import 'package:fix/onbboarding/page1.dart';
import 'package:fix/onbboarding/page2.dart';
import 'package:fix/onbboarding/page3.dart';
import 'package:fix/sweep.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: camel_case_types
class allpages extends StatefulWidget {
  static const String idScreen = "allpages";

  const allpages({super.key});

  @override
  State<allpages> createState() => _allpagesState();
}

// ignore: camel_case_types
class _allpagesState extends State<allpages> {
  final _controller = PageController();

  void nextPage() {
    _controller.animateToPage(_controller.page!.toInt() + 1,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  void previousPage() {
    _controller.animateToPage(_controller.page!.toInt() - 1,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  bool onLastPage = false;

  bool onSecondPage = false;

  bool onFirstPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
                onSecondPage = (index == 1);
                onFirstPage = (index == 0);
              });
            },
            children: const [
              page1(),
              page2(),
              page3(),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            const SizedBox(),
            if (onSecondPage)
              Text(
                "Our huge driver network helps you \n find the best drivers around ",
                style:
                    GoogleFonts.poppins(fontSize: 16.sp, color: Colors.white),
              )
            else if (onLastPage)
              Text(
                "Know your Driver in advance and be \n able view your current location\n in real time",
                style:
                    GoogleFonts.poppins(fontSize: 16.sp, color: Colors.white),
              )
            else if (onFirstPage)
              Text(
                "Request a ride and get picked by\n            a nearby driver",
                style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
            SizedBox(
              height: 170.h,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              axisDirection: Axis.horizontal,
              effect: SlideEffect(
                  dotHeight: 3.h,
                  dotWidth: 20.w,
                  dotColor: Colors.yellow,
                  activeDotColor: Colors.grey),
            ),
            Row(children: [
              onLastPage
                  ? Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 300.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(Getstarted(),transition: Transition.cupertino,);
                            },
                            child: Text("  Done",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp)),
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _controller.animateToPage(3, duration: Duration(seconds: 1), curve: Curves.ease);
                            },
                            child: Text(
                              "  Skip",
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp),
                            ),
                          ),
                          SizedBox(
                            width: 240.w,
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 15.sp,
                            ),
                            onTap: () {
                              previousPage();
                            },
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          GestureDetector(
                            onTap: (() {
                              nextPage();
                            }),
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ]),
          ])
        ]));
  }
}
