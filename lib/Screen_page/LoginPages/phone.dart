import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repairs_duniya_s/Screen_page/LoginPages/otp.dart';


class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  final TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          Container(
              height: MediaQuery.of(context).size.height/1.75,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)
                )
            ),
          ),
          Row(
            children: [
              Image.asset('images/logo_dark.png',scale: 1.6,),
              Text(' Repairs\n Duniya',
                  style: GoogleFonts.bigshotOne(color: Colors.white,fontSize: 38.sp,fontWeight: FontWeight.w500)
              ),
            ],
          ),

          Positioned(
            top: MediaQuery.of(context).size.height/2.7,
            child: Column(
              children: [
                Text('Login',
                    style: GoogleFonts.bigshotOne(color: Colors.white,fontSize: 32.sp,fontWeight: FontWeight.w500)
                ),
                SizedBox(height: 20.h,),
                Container(
                  height: 300.h,
                  width: 300.w,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 20.h,bottom: 35.h),
                        child: Text('Enter Phone Number',
                          style: TextStyle(color: Colors.white,fontSize: 20,),
                        ),
                      ),
                      Container(
                        width: 270.w,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: mobileController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.phone_android,
                              color: Colors.white,
                            ),
                            fillColor: Colors.black,
                            filled: true,
                            labelText: 'Mobile Number',
                            prefixText: '+91',
                            prefixStyle: const TextStyle(color: Colors.white),
                            labelStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.5),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
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
                        height: 38.h,
                        width: 150.w,
                        margin: EdgeInsets.only(top: 80.h),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context)=>MyOtp())));
                            },
                            child: Text('Get OTP',
                              style: TextStyle(color: Colors.black,fontSize: 19),
                            )),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
              child:IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.black,size: 40,),
                onPressed: () {},
              )

          )
        ],
      ),
    );
  }
}
