
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
//import '../Helpers/import.dart';

class ImageUploadView extends StatefulWidget {
  const ImageUploadView({Key? key}) : super(key: key);

  @override
<<<<<<<< HEAD:lib/Views/IdentityProof/imageUploadView.dart
  State<ImageUploadView> createState() => _ImageUploadViewState();
}

class _ImageUploadViewState extends State<ImageUploadView> {
========
  State<ImageUploadView> createState() => ImageUploadViewState();
}

class ImageUploadViewState extends State<ImageUploadView> {
>>>>>>>> 6f71788ffe7843ebb65d31399878bb7546be592b:lib/Views/UploadImages/imageUpload.dart
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
                title: const Text('Upload Image'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      GestureDetector(
                        child: const Text('Camera'),
                        onTap: () {
                            _pickImage(ImageSource.camera);
                          Navigator.of(context).pop();
                        },
                      ),
                     const  Padding(padding: EdgeInsets.all(8.0)),
                      GestureDetector(
                        child: const Text('Gallery'),
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
              : const Icon(Icons.add,color: Colors.white,size: 50,)

        )
    );
  }
}

