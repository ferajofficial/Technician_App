import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repairs_duniya_s/Views/CollectedCharges/chargesCollected.dart';
import 'package:repairs_duniya_s/Views/UploadImages/imageUpload.dart';

import '../../Utilities/bottom_NavBarView.dart';

class IdentityProofView extends StatefulWidget {
  const IdentityProofView({Key? key}) : super(key: key);

  @override
  State<IdentityProofView> createState() => _IdentityProofViewState();
}

class _IdentityProofViewState extends State<IdentityProofView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Identity Proof',
          style: GoogleFonts.italiana(
            fontSize: 25.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'Upload Adhaar front',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const ImageUploadView()),
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'Upload Adhaar back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const ImageUploadView()),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Upload Selfie',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const ImageUploadView()),
              ],
            ),
            SizedBox(
              height: 70.h,
            ),
            SizedBox(
              height: 40.h,
              width: 130.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 3,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavBarView(
                        num: 0,
                      ),
                    ),
                  );
                },
                child: Text(
                  'Next',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}