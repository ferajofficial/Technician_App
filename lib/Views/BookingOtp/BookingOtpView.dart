
import '../../Helpers/import.dart';

class BookingOtpView extends StatefulWidget {
  const BookingOtpView({Key? key}) : super(key: key);

  @override
  State<BookingOtpView> createState() => _BookingOtpViewState();
}

class _BookingOtpViewState extends State<BookingOtpView> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 70.w,
      height: 55.h,
      margin: EdgeInsets.only(left: 10.w),
      textStyle: TextStyle(fontSize: 25.sp, color: Colors.black,),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 90.h,),
            Text('Ask customer to share OTP',
            style:TextStyle(fontSize: 23.sp,fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 90.h,),
            Text('Enter OTP here',
              style:TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Pinput(
                defaultPinTheme: defaultPinTheme,
                length: 4,
                showCursor: true,
                onChanged: (value) {},
              ),
            ),
            Container(
              height: 38.h,
              width: 200.w,
              margin: EdgeInsets.only(top: 30.h),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15)),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Start Work',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
