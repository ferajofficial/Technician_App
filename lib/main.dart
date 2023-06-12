import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairs_duniya_s/Screen_page/BookingConfirmation/bookingConfirmation.dart';
import 'package:repairs_duniya_s/Screen_page/HomePage/home_page.dart';
import 'package:repairs_duniya_s/Screen_page/LoginPages/otp.dart';
import 'package:repairs_duniya_s/Screen_page/LoginPages/phone.dart';
import 'package:repairs_duniya_s/Screen_page/WelcomePage/welcom_page.dart';
import 'package:repairs_duniya_s/bottomNavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context,index){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavigationBar1(),
      );
    },
    );
  }
}
