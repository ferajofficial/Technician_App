import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:repairs_duniya_s/Screen_page/UploadVideoPages/after_work_page.dart';
import 'package:repairs_duniya_s/Screen_page/UploadVideoPages/videoUpload.dart';
import 'package:video_player/video_player.dart';

class BeforeWorkPage extends StatefulWidget {
  const BeforeWorkPage({Key? key}) : super(key: key);

  @override
  State<BeforeWorkPage> createState() => _BeforeWorkPageState();
}

class _BeforeWorkPageState extends State<BeforeWorkPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 30,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Text('Before work video',
                style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.w500),
              ),
            ),
            VideoUpload(),
            SizedBox(height: 50.h,),
            Container(
              height: 35.h,
              width:100.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(
                onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: ((context)=>AfterWorkPage())));
                },
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
