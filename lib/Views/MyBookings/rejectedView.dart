import '../../Helpers/import.dart';
class RejectedBookingView extends StatelessWidget {
  const RejectedBookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
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
            SizedBox(height: 30.h,),
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
              padding: const EdgeInsets.only(top: 10,bottom: 8),
              child: Divider(thickness: 1,color: Colors.grey.shade600,),
            ),
            Center(
              child: Column(
                children: [
                  Text('Rejected',style: GoogleFonts.libreCaslonText(fontSize: 25.sp,fontWeight: FontWeight.w500,color: Colors.redAccent)),
                  Text('Reason: Prices issues',style: GoogleFonts.libreCaslonText(fontSize: 15.sp,color: Colors.black))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
