import '../../Helpers/import.dart';

class SubscriptionView extends StatefulWidget {
  const SubscriptionView({super.key});

  @override
  State<SubscriptionView> createState() => SubscriptionViewState();
}

class SubscriptionViewState extends State<SubscriptionView> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Stack(
        children: [
          Container(
            height: 200.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff3624ff),
                Color(0xffe233f2),
                // Colors.black,
                // Color.fromARGB(255, 105, 102, 102)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          SafeArea(
            bottom: false,
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: "Subscription ",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      children: [
                        TextSpan(
                          text: "Plans",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(" Choose the best plan that works for you",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white.withOpacity(0.8),
                    ))),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 400.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //**   SIlVER CARD   */
                      SizedBox(width: 10.w),
                      Container(
                        width: 310.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                            width: 2,
                          ),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/SilverCard.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Silver Plan ",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      fontSize: 30.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/rupee-indian .png",
                                        height: 20.h,
                                        color: Colors.black,
                                      ),
                                      Text("1999/-",
                                          style: TextStyle(
                                            fontSize: 23.sp,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              DataTable(
                                  // ignore: deprecated_member_use
                                  dataRowHeight: (ScreenUtil().screenHeight -
                                          ScreenUtil().setHeight(200)) /
                                      9,
                                  headingRowHeight: 4.h,
                                  columns: const <DataColumn>[
                                    DataColumn(
                                      label: Text(''),
                                    ),
                                    DataColumn(
                                      label: Text(''),
                                    ),
                                  ],
                                  rows: <DataRow>[
                                    DataRow(cells: <DataCell>[
                                      DataCell(
                                        Text('2X Leads',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0.sp,
                                              ),
                                            )),
                                      ),
                                      const DataCell(
                                        Icon(Icons.check, color: Colors.black),
                                      ),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(
                                        Text(
                                          '24*7 Category Manager Support',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const DataCell(
                                        Icon(Icons.check, color: Colors.black),
                                      ),
                                    ]),
                                  ]),
                              SizedBox(
                                height: 175.h,
                              ),
                              SizedBox(
                                height: 35.h,
                                width: 130.w,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 1,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      backgroundColor: Colors.grey[200]),
                                  onPressed: () {},
                                  child: Text("Buy Now",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),

                      //**   GOLDEN CARD   */

                      Container(
                        width: 310.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                            width: 2,
                          ),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/GoldenCard.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Gold Plan",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        fontSize: 28.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ))),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/rupee-indian .png",
                                        height: 20.h,
                                        color: Colors.black,
                                      ),
                                      Text("2999/-",
                                          style: TextStyle(
                                            fontSize: 23.sp,
                                            color: const Color.fromARGB(
                                                255, 207, 24, 11),
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              DataTable(
                                  // ignore: deprecated_member_use
                                  dataRowHeight: (ScreenUtil().screenHeight -
                                          ScreenUtil().setHeight(195)) /
                                      9.5,
                                  headingRowHeight: 6.h,
                                  columns: const <DataColumn>[
                                    DataColumn(
                                      label: Text(''),
                                    ),
                                    DataColumn(
                                      label: Text(''),
                                    ),
                                  ],
                                  rows: <DataRow>[
                                    DataRow(cells: <DataCell>[
                                      DataCell(
                                        Text('3X Leads',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0.sp,
                                              ),
                                            )),
                                      ),
                                      const DataCell(
                                        Icon(Icons.check, color: Colors.black),
                                      ),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(
                                        Text('Weekly Bonus Upto 500/-',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0.sp,
                                              ),
                                            )),
                                      ),
                                      const DataCell(
                                        Icon(Icons.check, color: Colors.black),
                                      ),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(
                                        Text('''T-Shirts With Company's Logo''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0.sp,
                                              ),
                                            )),
                                      ),
                                      const DataCell(
                                        Icon(Icons.check, color: Colors.black),
                                      ),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(
                                        Text('24*7 Category Manager Support',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0.sp,
                                              ),
                                            )),
                                      ),
                                      const DataCell(
                                        Icon(Icons.check, color: Colors.black),
                                      ),
                                    ]),
                                  ]),
                              SizedBox(
                                height: 80.h,
                              ),
                              SizedBox(
                                height: 35.h,
                                width: 130.w,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 1,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      backgroundColor: Colors.yellow[700]),
                                  onPressed: () {},
                                  child: Text("Buy Now",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),

                      //**   DIAMOND CARD   */

                      Container(
                        width: 310.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                            width: 2,
                          ),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/DiamondCard.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Diamond Plan ",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        fontSize: 23.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ))),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/rupee-indian .png",
                                        height: 19.h,
                                        color: Colors.black,
                                      ),
                                      Text("4999/-",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                            fontSize: 22.sp,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w600,
                                          ))),
                                    ],
                                  ),
                                ],
                              ),
                              DataTable(
                                  // ignore: deprecated_member_use
                                  dataRowHeight:
                                      (MediaQuery.of(context).size.height -
                                              285) /
                                          9,
                                  headingRowHeight: 4.h,
                                  columns: const <DataColumn>[
                                    DataColumn(
                                      label: Text(''),
                                    ),
                                    DataColumn(
                                      label: Text(''),
                                    ),
                                  ],
                                  rows: <DataRow>[
                                    DataRow(cells: <DataCell>[
                                      DataCell(
                                        Text('4X Leads',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0.sp,
                                              ),
                                            )),
                                      ),
                                      const DataCell(
                                        Icon(Icons.check, color: Colors.black),
                                      ),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(
                                        Text('Weekly Bonus Upto 1000/-',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0.sp,
                                              ),
                                            )),
                                      ),
                                      const DataCell(
                                        Icon(Icons.check, color: Colors.black),
                                      ),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(
                                        Text('24*7 Category Manager Support',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0.sp,
                                              ),
                                            )),
                                      ),
                                      const DataCell(
                                        Icon(Icons.check, color: Colors.black),
                                      ),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(
                                        Text('''T-shirt With Company's Logo''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0.sp,
                                              ),
                                            )),
                                      ),
                                      const DataCell(
                                        Icon(Icons.check, color: Colors.black),
                                      ),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(
                                        Text('Id Card of the Company',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0.sp,
                                              ),
                                            )),
                                      ),
                                      const DataCell(
                                        Icon(Icons.check, color: Colors.black),
                                      ),
                                    ]),
                                  ]),
                              SizedBox(
                                height: 30.h,
                              ),
                              SizedBox(
                                height: 35.h,
                                width: 130.w,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 1,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      backgroundColor: Colors.blueAccent[100]),
                                  onPressed: () {},
                                  child: Text("Buy Now",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.center,
                  child: Text("Slide for more..",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black.withOpacity(0.8),
                      )),
                ),
              ],
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                )),
          ),
        ],
      ),
    );
  }
}
