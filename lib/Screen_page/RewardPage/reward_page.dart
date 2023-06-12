import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repairs_duniya_s/bottomNavigationBar.dart';

import '../../drawer.dart';
class RewardPage extends StatefulWidget {
  const RewardPage({Key? key}) : super(key: key);

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              child: Text('Complete 7 Booking with 7 days to get the rewards',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400,color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 40.h,),
            Image.asset('images/home_image.jpeg')
          ],
    );
  }
}
