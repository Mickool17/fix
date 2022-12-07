import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class search extends StatefulWidget {

  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 215.0.h,
            decoration:  const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 6.0,
                  spreadRadius: 0.5,
                  offset: Offset(0.7,0.7),

                )
              ],
            ),
            child: Padding(padding: const EdgeInsets.only(left: 25.0,top: 20.0,right: 25.0,bottom: 20.0),
            child: Column(




              children: [
              SizedBox(height: 30.0.h,),
              Stack(
                children: [
                  Row(
                    children: [
                  
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.cancel_outlined
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Text("Your route",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)
                    ])
                ],
              ),




                const SizedBox(height:16.0),
                Row(
                  children: [
                    const Icon(Icons.location_city),
                    const SizedBox(width: 18.0,),
                    Expanded(child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child:  Padding(padding: EdgeInsets.all(3.0),
                      child: TextField(
                        
                        decoration: InputDecoration(
                          
                          
                          hintText: "Pickup Location",
                          fillColor: Colors.grey[400],
                          filled: true,
                          border: OutlineInputBorder( ),
                          isDense: true,
                          contentPadding: EdgeInsets.only(left: 11.0,top: 8.0,bottom: 8.0),

                        ),
                      ),),
                    )
                    )
                  ],
                ),
                const SizedBox(height:10.0),
                Row(
                  children: [
                    const Icon(IconlyBold.location),
                    const SizedBox(width: 18.0,),
                    Expanded(child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: const Padding(padding: EdgeInsets.all(3.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Destination",
                          fillColor: Colors.grey,
                          filled: true,
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.only(left: 11.0,top: 8.0,bottom: 8.0),

                        ),
                      ),),
                    )
                    )
                  ],
                )
              ],
            ),),
            
          )
          
        ],
      ),
    );
  }
}