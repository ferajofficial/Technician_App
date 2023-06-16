import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
class ImageUpload extends StatefulWidget {
  const ImageUpload({Key? key}) : super(key: key);

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  File? _image;
  final picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                            _pickImage(ImageSource.camera);
                          Navigator.of(context).pop();
                        },
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      GestureDetector(
                        child: Text('Gallery'),
                        onTap: () {
                          _pickImage(ImageSource.gallery);
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
          width: 150.w,
          height: 140.h,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.white)
          ),
          child:  _image != null
              ? Image.file(_image!, fit: BoxFit.cover,)
              : Icon(Icons.add,color: Colors.white,size: 50,)

        )
    );
  }
}

