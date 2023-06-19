import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repairs_duniya_s/Views/ChargesCollected/chargesCollectedView.dart';
import 'package:repairs_duniya_s/Views/IdentityProof/imageUploadView.dart';

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
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Identity Proof',
                  style: GoogleFonts.italiana(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 35.h,),
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
                          child: ImageUploadView()),
                    ],
                  ),
                  SizedBox(width: 20.w,),
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
                          child: ImageUploadView()),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 70.h,),
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
                    child: ImageUploadView()),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 35.h,
              width:100.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(
                onPressed: (){},
                child: Text('Next',
                  style: TextStyle(color: Colors.black,fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
