import '../../Helpers/import.dart';
class CustomerDetailsView extends StatefulWidget {
  const CustomerDetailsView({Key? key}) : super(key: key);

  @override
  State<CustomerDetailsView> createState() => _CustomerDetailsViewState();
}

class _CustomerDetailsViewState extends State<CustomerDetailsView> {
  final TextEditingController reasonController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      width: 330.w,
      margin: EdgeInsets.symmetric(horizontal: 18),
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
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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

            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 35.h,
                  width:130.w,
                  decoration: BoxDecoration(
                    color: Color(0xff4dcf3e),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingView()));
                    },
                    child: Text('Accept',
                      style: TextStyle(color: Colors.white,fontSize: 18.sp),
                    ),
                  ),
                ),
                SizedBox(width: 30.w,),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 35.h,
                  width:130.w,
                  decoration: BoxDecoration(
                    color: Color(0xffde5a2f),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Reason for Rejecting'),
                            content: TextField(
                              controller: reasonController,
                              decoration: InputDecoration(
                                hintText: 'Enter reason...',
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  reasonController.clear();
                                  Navigator.of(context).pop();
                                },
                                child: Text('Cancel',style: TextStyle(color: Colors.black54),),
                              ),
                              TextButton(
                                onPressed: () {
                                  reasonController.clear();
                                  Navigator.of(context).pop();
                                },
                                child: Text('Confirm',style: TextStyle(color: Colors.black),),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('Reject',
                      style: TextStyle(color: Colors.white,fontSize: 18.sp),
                    ),
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
