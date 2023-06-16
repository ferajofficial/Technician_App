import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:repairs_duniya_s/bottomNavigationBar.dart';

final TextEditingController mobileController = TextEditingController();
class MyOtp extends StatefulWidget {
  const MyOtp({Key? key}) : super(key: key);

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50.w,
      height: 55.h,
      textStyle: TextStyle(
        fontSize: 25.sp,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(20),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    var code = "";
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
              left: 22.w,
              top: MediaQuery.of(context).size.height/2.9,
              child: Text('Enter 6-digit code sent to\n+91 9234567890',
                style: TextStyle(color: Colors.white,fontSize: 17),
              )
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/1.7,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Pinput(
                    defaultPinTheme: defaultPinTheme,
                    length: 6,
                    showCursor: true,
                    onChanged: (value) {
                      code = value;
                    },
                  ),
                ),
                Text('Resend OTP',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                Text('00:18',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                Container(
                  height: 38.h,
                  width: 250.w,
                  margin: EdgeInsets.only(top: 10.h),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context)=>BottomNavigationBar1())));
                      },
                      child: Text('Continue',
                        style: TextStyle(color: Colors.white,fontSize: 19),
                      )),
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
