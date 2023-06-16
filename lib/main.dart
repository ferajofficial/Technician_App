import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairs_duniya_s/Screen_page/BookingConfirmation/bookingConfirmation.dart';
import 'package:repairs_duniya_s/Screen_page/HomePage/home_page.dart';
import 'package:repairs_duniya_s/Screen_page/LoginPages/otp.dart';
import 'package:repairs_duniya_s/Screen_page/LoginPages/phone.dart';
import 'package:repairs_duniya_s/Screen_page/UploadVideoPages/after_work_page.dart';
import 'package:repairs_duniya_s/Screen_page/UploadVideoPages/before_work_page.dart';
import 'package:repairs_duniya_s/Screen_page/WelcomePage/welcom_page.dart';
import 'package:repairs_duniya_s/bottomNavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context,index){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomPage(),
      );
    },
    );
  }
}
