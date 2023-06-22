import 'package:repairs_duniya_s/Views/Subscription/SubscriptionView.dart';

import '../Helpers/import.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Drawer(
      child: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.black,
                ),
                child: DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25,
                          child: Text(
                            "X",
                            style:
                                TextStyle(fontSize: 30.sp, color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text("xyz person.....",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 15.sp, color: Colors.white),
                                    )),
                              ),
                             
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.star, color: Colors.amber),
                                  const Icon(Icons.star, color: Colors.amber),
                                  const Icon(Icons.star, color: Colors.amber),
                                  const Icon(Icons.star_half,
                                      color: Colors.amber),
                                  const Icon(Icons.star_outline,
                                      color: Colors.amber),
                                  Text(
                                    "(4.6)",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 15.sp, color: Colors.white),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.subscriptions_outlined,
                        color: Colors.black,
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SubscriptionView()));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                          )),
                      title: Text('Subscription',
                          style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SubscriptionView(),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 05.0, right: 05),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.card_giftcard,
                        color: Colors.black,
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BottomNavBarView(num: 1)));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                          )),
                      title: Text(
                        'Rewards/Bonus',
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavBarView(num: 1)));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 05.0, right: 05),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.attach_money,
                        size: 30,
                        color: Colors.black,
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EarningsView()));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                          )),
                      title: Text(
                        'Your Earning',
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EarningsView()));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 05.0, right: 05),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    ListTile(
                        leading: const Icon(
                          Icons.task_outlined,
                          color: Colors.black,
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WorkdoneView()));
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15,
                            )),
                        title: Text(
                          'WorkDone',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        onTap: () {}),
                    Padding(
                      padding: const EdgeInsets.only(left: 05.0, right: 05),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.logout,
                        color: Colors.black,
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const ##<file name>##()));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                          )),
                      title: Text(
                        'Logout',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            left: 200.w,
            top: 25.h,
            //right: 10.w,
            child: IconButton(
              icon: const Icon(
                Icons.close_sharp,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
