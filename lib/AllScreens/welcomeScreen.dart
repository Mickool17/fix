import 'package:flutter/material.dart';

void main() => runApp(const WelcomeScreen());

class WelcomeScreen extends StatelessWidget {

  static const String idScreen = "WelcomeScreen";



  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(

        body: SafeArea(
          child:Container(
          margin: const EdgeInsets.symmetric(vertical: 50.0),
          height: 300.0,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 400.0,

            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "images/Faith.png"),
                fit: BoxFit.fill,
              ),

            ),
              ),
              Container(
                width: 400.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "images/relm.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              Container(
                width: 400.0,

    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage(
    "images/mate.png"),
    fit: BoxFit.fill,
    ),
    ),
              ),



            ],
          ),
        ),
      ),
      ),
    );
  }
}





