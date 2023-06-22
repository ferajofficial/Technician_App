import '../../Helpers/import.dart';

class PendingBookingView extends StatelessWidget {
  PendingBookingView({Key? key}) : super(key: key);
  final TextEditingController reasonController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 330.w,
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: const Color(0xfffaf6ed),
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
        boxShadow: const [
          BoxShadow(
              offset: Offset(2, 2), blurRadius: 1, color: Color(0xffb5b3b3))
        ],
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Name:',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' Shaik Abdullha',
                            style: TextStyle(
                                fontSize: 15.sp, color: Colors.blue[900]),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Appliance:',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' AC',
                            style: TextStyle(
                                fontSize: 15.sp, color: Colors.blue[900]),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Service:',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' AC installation',
                            style: TextStyle(
                                fontSize: 15.sp, color: Colors.blue[900]),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Date:',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' 22|06|23',
                            style: TextStyle(
                                fontSize: 15.sp, color: Colors.blue[900]),
                          ),
                        ],
                      ),
                    ),
                    //* will not visible at the time of Urgent Bookings */
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Time:',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: '  Morning',
                            style: TextStyle(
                                fontSize: 15.sp, color: Colors.blue[900]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    // margin: const EdgeInsets.only(top: 20),
                    height: 30.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffde5a2f),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Reason for Rejecting'),
                              content: TextField(
                                controller: reasonController,
                                decoration: const InputDecoration(
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
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    reasonController.clear();
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    'Confirm',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
                        'Reject',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    height: 100.h,
                    width: 130.w,
                    margin: EdgeInsets.only(left: 10.w, top: 5.h),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 1,
                              color: Color(0xffb5b3b3)),
                        ]),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Start Work in",
                            style: GoogleFonts.poppins(
                                color: Colors.black, fontSize: 15.sp),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          RichText(
                            text: TextSpan(
                              text: '40:00',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 33.sp),
                              children: [
                                TextSpan(
                                  text: 'min',
                                  style: TextStyle(
                                      textBaseline: TextBaseline.alphabetic,
                                      color: Colors.red,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          //** Visible only at the time of Urgent bookings */
                          Text(
                            "Win Bonus of 100/-",
                            style: GoogleFonts.poppins(
                                color: Colors.black, fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Divider(
              thickness: 1,
              color: Colors.grey.shade600,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 25.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'Call',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 32.h,
                width: 110.w,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Start',
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 18.sp),
                  ),
                ),
              ),
              Container(
                height: 25.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        'Direction',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 10.5.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
