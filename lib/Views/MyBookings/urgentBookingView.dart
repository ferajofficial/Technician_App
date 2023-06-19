import '../../Helpers/import.dart';

class UrgentBook extends StatefulWidget {
  const UrgentBook({Key? key}) : super(key: key);

  @override
  State<UrgentBook> createState() => _UrgentBookState();
}

class _UrgentBookState extends State<UrgentBook> {
  final TextEditingController reasonController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: SizedBox(
              height: 170.h,
              width: MediaQuery.of(context).size.width - 20,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 45.h, horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                          child: Icon(
                            Icons.subscriptions_outlined,
                            size: 40,
                            color: Colors.white,
                          )),
                      const SizedBox(height: 16),
                      Text(
                        'To get more works subscribe to our Gold plan',
                        style: GoogleFonts.italiana(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 10,bottom: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'New Bookings',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.black),
              ),
            ),
          ),
          Stack(
            children: [
              //CustomerDetailsView(),
              Container(
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
                      SizedBox(height: 33.h,),
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
              ),
              Positioned(
                right: 18.w,
                top: 14.h,
                child: Container(
                  height: 23.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)
                    )
                  ),
                  child:Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text('Urgent Booking ',
                        style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 11.sp),
                      )
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(27,5,27,0),
              child: Text('more >>',style: TextStyle(fontSize: 16.sp, color: Colors.grey.shade600)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Recent Bookings',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 2),
            child: Divider(thickness: 1,),
          ),
          Container(
            height: 110.h,
            width: 330.w,
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
            child: Center(
                child: Text('Completed/Rejected',style: TextStyle(fontSize: 24.sp, color: Colors.grey.shade500),)
            ),
          )
        ],
      ),
    );
  }
}
