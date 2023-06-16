import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class AfterWorkPage extends StatefulWidget {
  const AfterWorkPage({Key? key}) : super(key: key);

  @override
  State<AfterWorkPage> createState() => _AfterWorkPageState();
}

class _AfterWorkPageState extends State<AfterWorkPage> {
  File? _videoFile;
  final picker = ImagePicker();

  Future<void> _getVideoFile(ImageSource source) async {
    final pickedFile = await picker.pickVideo(source: source);
    if (pickedFile != null) {
      setState(() {
        _videoFile = File(pickedFile.path);
        _videoPlayerController = VideoPlayerController.file(_videoFile!);
        _videoPlayerController?.initialize().then((_) {
          if (mounted) {
            setState(() {
              _videoPlayerController?.dispose();
              _videoFile = File(pickedFile.path);
              _videoPlayerController = VideoPlayerController.file(_videoFile!);
              _initializeVideoPlayerFuture = _videoPlayerController?.initialize();
            });
          }
        });

      });
    }
  }
  VideoPlayerController? _videoPlayerController;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset('assets/sample_video.mp4');
    _videoPlayerController?.initialize().then((_) {
      setState(() {
        _initializeVideoPlayerFuture = _videoPlayerController?.initialize();
      });
    });

  }

  @override
  void dispose() {
    _videoPlayerController?.dispose();
    super.dispose();
  }

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
              child: Text('After work video',
                style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.w500),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Upload Video'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            GestureDetector(
                              child: Text('Camera'),
                              onTap: () {
                                _getVideoFile(ImageSource.camera);
                                Navigator.of(context).pop();
                              },
                            ),
                            Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: Text('Gallery'),
                              onTap: () {
                                _getVideoFile(ImageSource.gallery);
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.white)
                ),
                child: _videoFile == null
                    ? Icon(
                  Icons.video_call,
                  color: Colors.grey[800],
                  size: 80.0,
                )
                    : FutureBuilder<void>(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}',style: TextStyle(color: Colors.red),);
                    } else {
                      return AspectRatio(
                        aspectRatio: _videoPlayerController!.value.aspectRatio,
                        child: VideoPlayer(_videoPlayerController!),
                      );
                    }
                  },
                ),
              ),
            ),
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
                    // Navigator.push(context, MaterialPageRoute(builder: ((context)=>MyPhone())));
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
