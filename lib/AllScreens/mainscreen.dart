import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fix/AllScreens/paymentab.dart';
import 'package:fix/AllScreens/search.dart';
import 'package:fix/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconly/iconly.dart';

import '../widgets/hor.dart';

class MainScreen extends StatefulWidget {
  static const String idScreen = "Mainscreen";
  final PixelControllers textControllers = Get.put(PixelControllers());
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final Completer<GoogleMapController> _controllerGoogleMap = Completer();
  late GoogleMapController newGoogleMapController;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  late Position currentPosition;
  var geoLocator = Geolocator();
  double bottomPaddingofMap = 0;
  

  void locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;
    LatLng latLatPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition =
        CameraPosition(target: latLatPosition, zoom: 14);
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(40.00532, -83.009453),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Container(
        color: Colors.white,
        width: 255.0.w,
        child: Drawer(
          child: ListView(
            children: [
              Container(
                height: 165.0,
                child: DrawerHeader(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset(
                          "images/pat.png",
                          height: 65.0.h,
                          width: 65.0.w,
                        ),
                        SizedBox(
                          width: 16.0.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10.0.h,
                            ),
                            const Text("Visit Profile"),
                          ],
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              ListTile(
                leading: Icon(Icons.payment_outlined),
                title: Text("Payment"),
                onTap: () {
                  Get.to(paymentrab());
                },
              ),
              ListTile(
                leading: Icon(Icons.tag),
                title: Text("Promotions"),
                subtitle: Text("Enter promo code"),
                onTap: () {},
              ),
              const ListTile(
                leading: Icon(Icons.history),
                title: Text("My Rides"),
              ),
              const ListTile(
                leading: Icon(Icons.work_outline_outlined),
                title: Text("Travel"),
              ),
              const ListTile(
                leading: Icon(Icons.support_agent),
                title: Text("Support"),
              ),
              const ListTile(
                leading: Icon(Icons.abc_outlined),
                title: Text("About"),
              ),
              SizedBox(
                height: 100.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(12)),
                    height: 50.h,
                    width: 186.h,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              "Become a driver",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              "Earn money on your schedule",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
              padding: EdgeInsets.only(bottom: bottomPaddingofMap),
              mapType: MapType.normal,
              myLocationButtonEnabled: true,
              initialCameraPosition: _kGooglePlex,
              myLocationEnabled: true,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                _controllerGoogleMap.complete(controller);
                newGoogleMapController = controller;

                setState(() {
                  bottomPaddingofMap = 230.0;
                 
                });

                locatePosition();
              }),

          // taost

          Positioned(
            top: 45.0.h,
            left: 20.0.w,
            child: GestureDetector(
              onTap: (() {
                scaffoldKey.currentState?.openDrawer();
              }),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 6.0,
                          spreadRadius: 0.5,
                          offset: Offset(
                            0.7,
                            0.7,
                          ))
                    ]),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: Container(
                height: 170.0.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18.0),
                      topRight: Radius.circular(18.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 16.0,
                      spreadRadius: 0.5,
                      offset: Offset(0.7, 0.7),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.0.r,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.0.h),
                      GestureDetector(
                        onTap: (() {}),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const search(),
                                ));
                          },
                          child: Container(
                            height: 40.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 6.0,
                                    spreadRadius: 0.1,
                                    offset: Offset(0.7, 0.7),
                                  ),
                                ]),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10.w,
                                ),
                                const Icon(
                                  Icons.search_rounded,
                                ),
                                SizedBox(
                                  width: 10.0.w,
                                ),
                                Text(
                                  "Where to?",
                                  style: GoogleFonts.poppins(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.home, color: Colors.grey),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Add Hostel",
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Hostel address",
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const hor(),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.work, color: Colors.grey),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Add work",
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "office address",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
