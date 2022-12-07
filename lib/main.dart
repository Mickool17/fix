
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fix/AllScreens/Sigin.dart';
import 'package:fix/AllScreens/forgetpassword.dart';
import 'package:fix/AllScreens/freestyle.dart';
import 'package:fix/AllScreens/getstarted.dart';
import 'package:fix/AllScreens/mainscreen.dart';
import 'package:fix/AllScreens/paymentab.dart';
import 'package:fix/AllScreens/signupscreen.dart';
import 'package:fix/AllScreens/welcomeScreen.dart';
import 'package:fix/onbboarding/allpages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';





Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();

  runApp(const MyApp());
}
DatabaseReference micref = FirebaseDatabase.instance.reference().child("users");

Future Initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 4));
}

// void main() {
//   runApp(const MyApp());
// }



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(393, 630),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Bowen cab App',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.amber,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
       initialRoute:Getstarted.idScreen,
      routes: {
      
        Signinscreen.idScreen: (context) => Signinscreen(),
        SignUp1.idScreen: (context) =>  SignUp1(),
        SignUp2.idScreen: (context) =>  SignUp2(),
        SignUp3.idScreen: (context) =>  SignUp3(),
        SignUp4.idScreen: (context) =>  SignUp4(),
        MainScreen.idScreen: (context) =>   MainScreen(),
        Getstarted.idScreen: (context) =>  const Getstarted(),
        allpages.idScreen: (context) => const allpages(),
        forgotpassword.idScreen: (context) => forgotpassword(),
        freestyle.idScreen: (context) => const freestyle(),
        paymentrab.idScreen: (context) => const paymentrab(),



       
      },
        );
      },
     
    );
    
  }
  
}
      
    
  



