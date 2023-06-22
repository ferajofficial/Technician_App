import '../../Helpers/import.dart';

class CustomerDetailsView extends StatefulWidget {
  const CustomerDetailsView({Key? key}) : super(key: key);

  @override
  State<CustomerDetailsView> createState() => _CustomerDetailsViewState();
}

class _CustomerDetailsViewState extends State<CustomerDetailsView> {
  final TextEditingController reasonController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      width: 330.w,
      margin: const EdgeInsets.symmetric(horizontal: 18),
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
          ]),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          // top: 10,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
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
                            text: ' 22|06|2023',
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
                            text: 'Time:',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' Morning',
                            style: TextStyle(
                                fontSize: 15.sp, color: Colors.blue[900]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      //**if it's urgent bookings from cutomer then this tag is shown other wise no need*/
                      // Container(
                      //     height: 20.h,
                      //     width: 110.w,
                      //     decoration: BoxDecoration(
                      //         color: Colors.cyan[300],
                      //         borderRadius: const BorderRadius.only(
                      //             bottomLeft: Radius.circular(10),
                      //             bottomRight: Radius.circular(10)),
                      //         boxShadow: const [
                      //           BoxShadow(
                      //               offset: Offset(2, 2),
                      //               blurRadius: 1,
                      //               color: Color(0xffb5b3b3))
                      //         ]),
                      //     child: Center(
                      //       child: Text(
                      //         "Urgent Booking",
                      //         style: GoogleFonts.poppins(
                      //             fontSize: 12.5.sp,
                      //             fontWeight: FontWeight.w500,
                      //             color: Colors.black),
                      //       ),
                      //     )),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        height: 100.h,
                        width: 130.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 1,
                                  color: Color(0xffb5b3b3)),
                            ]),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              "Accept Booking",
                              style: GoogleFonts.poppins(
                                  color: Colors.black, fontSize: 13.sp),
                            ),
                            Text(
                              "Within",
                              style: GoogleFonts.poppins(
                                  color: Colors.black, fontSize: 13.sp),
                            ),
                            RichText(
                              text: TextSpan(
                                text: '03:00',
                                style: TextStyle(
                                    color: Colors.red, fontSize: 33.sp),
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
                            //** Visible only at the time of Urgent bookings */
                            Text(
                              "Get Bonus of 100/-",
                              style: GoogleFonts.poppins(
                                  color: Colors.black, fontSize: 13.sp),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // margin: const EdgeInsets.only(top: 20),
                  height: 35.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                    color: const Color(0xff4dcf3e),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BookingView()));
                    },
                    child: Text(
                      'Accept',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 18.sp),
                    ),
                  ),
                ),
                Container(
                  // margin: const EdgeInsets.only(top: 20),
                  height: 35.h,
                  width: 130.w,
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
                          color: Colors.white, fontSize: 18.sp),
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
