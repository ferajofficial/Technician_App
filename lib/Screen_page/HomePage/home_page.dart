import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repairs_duniya_s/bottomNavigationBar.dart';

import '../../drawer.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Center(
            child: Container(
              height: 170.h,
              width: MediaQuery.of(context).size.width-20,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 45.h,horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Icon(Icons.subscriptions_outlined, size: 40,color: Colors.white,)),
                      SizedBox(height: 16),
                      Text(
                        'To get more works subscribe to our Gold plan',
                        style: GoogleFonts.italiana(fontSize: 15.sp, fontWeight: FontWeight.w600,color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Text('Recent Bookings',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600,color: Colors.white),
          ),
          Image.asset('images/home_image.jpeg')
        ],
    );
  }
}
