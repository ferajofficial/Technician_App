import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../bottomNavigationBar.dart';
import '../../drawer.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height/3,
            width:MediaQuery.of(context).size.width ,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 400.h,
              width: 300.w,
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black)
              ),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 15.h,bottom: 5.h),
                    child: Text('My Profile',
                      style: TextStyle(color: Colors.black,fontSize: 27,fontWeight: FontWeight.w700),
                    ),
                  ),
                  GestureDetector(
                    child: CircleAvatar(
                      //backgroundImage: AssetImage('images/profile.png'),
                      backgroundImage: _image != null ? FileImage(_image!) : AssetImage('images/profile.png')as ImageProvider<Object>,
                      backgroundColor: Colors.transparent,
                      radius: 50,
                    ),
                    onTap: _pickImage
                  ),
                  Container(
                    width: 270.w,
                    padding: EdgeInsets.only(top: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.people_alt_outlined,
                          color: Colors.black,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Name',
                        labelStyle: const TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 270.w,
                    padding: EdgeInsets.only(top: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: mobileController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.phone_android,
                          color: Colors.black,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Mobile Number',
                        prefixText: '+91',
                        prefixStyle: const TextStyle(color: Colors.black),
                        labelStyle: const TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 270.w,
                    padding: EdgeInsets.only(top: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Email',
                        labelStyle: const TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 40.h,
              width: 120.w,
              margin: EdgeInsets.only(top: 80.h,bottom: 20.h),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40)
              ),
              child: TextButton(
                  onPressed: (){},
                  child: Text('Save',
                    style: TextStyle(color: Colors.white,fontSize: 19),
                  )),
            ),
          ),
        ],
    );
  }
}
