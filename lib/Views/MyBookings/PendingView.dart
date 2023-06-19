import '../../Helpers/import.dart';
class PendingBookingView extends StatelessWidget {
  const PendingBookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 320.w,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: Color(0xfffaf6ed),
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade200,
            Colors.grey.shade300,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: const [0.5, 0.9],
        ),
        boxShadow: [
          BoxShadow(
              offset: Offset(2, 2), blurRadius: 1, color: Color(0xffb5b3b3))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment:Alignment.centerRight,
              child: Container(
                height: 30.h,
                width:110.w,
                decoration: BoxDecoration(
                    color: Color(0xffde5a2f),
                    borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: (){},
                  child: Text('Reject',
                    style: TextStyle(color: Colors.white,fontSize: 18.sp),
                  ),
                ),
              ),
            ),
            Text.rich(TextSpan(
              children: [
                TextSpan(text: 'Customer Name:', style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500,color: Colors.black),),
                TextSpan(text: '  ******', style: TextStyle(fontSize: 15.sp,color: Colors.black),),],),),
            Text.rich(TextSpan(
              children: [
                TextSpan(text: 'Service:', style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500,color: Colors.black),),
                TextSpan(text: '  Geyser', style: TextStyle(fontSize: 15.sp,color: Colors.black),),],),),
            Text.rich(TextSpan(
              children: [
                TextSpan(text: 'Describe Repair:', style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500,color: Colors.black),),
                TextSpan(text: '  ******', style: TextStyle(fontSize: 15.sp,color: Colors.black),),],),),
            Text.rich(TextSpan(
              children: [
                TextSpan(text: 'Date:', style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500,color: Colors.black),),
                TextSpan(text: '  ******', style: TextStyle(fontSize: 15.sp,color: Colors.black),),],),),
            Text.rich(TextSpan(
              children: [
                TextSpan(text: 'Time:', style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500,color: Colors.black),),
                TextSpan(text: '  Morning/Afternoon/Evening', style: TextStyle(fontSize: 15.sp,color: Colors.black),),],),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Divider(thickness: 1,color: Colors.grey.shade600,),
            ),
            Row(
              children: [
                Container(
                  height: 25.h,
                  width:80.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, color: Colors.white, size: 16,),
                      SizedBox(width: 4.w),
                      Text('Call', style: TextStyle(color: Colors.white, fontSize: 12.sp,),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 32.h,
                  width:110.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: Text('Start',
                      style: TextStyle(color: Colors.white,fontSize: 18.sp),
                    ),
                  ),
                ),
                Container(
                  height: 25.h,
                  width:80.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_pin, color: Colors.white, size: 16,),
                      SizedBox(width: 4.w),
                      Text('Direction', style: TextStyle(color: Colors.white, fontSize: 12.sp,),),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
