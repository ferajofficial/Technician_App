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
                        child: Text(
                          "Reapirs Duniya Welcomes You !.",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: Text(
                              "A",
                              style: TextStyle(
                                  fontSize: 30.sp, color: Colors.black),
                            ),
                          ),
                          SizedBox(width: 17.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                    fontSize: 18.sp, color: Colors.white),
                              ),
                              Text(
                                "a@gmail.com",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.subscriptions_outlined,
                      color: Colors.black,
                    ),
                    title: Text('Subscription',
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.card_giftcard,
                      color: Colors.black,
                    ),
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
                  ListTile(
                    leading: const Icon(
                      Icons.attach_money,
                      size: 30,
                      color: Colors.black,
                    ),
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
                  ListTile(
                      leading: const Icon(
                        Icons.task_outlined,
                        color: Colors.black,
                      ),
                      title: Text(
                        'WorkDone',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const IdentityProofView())));
                        //Navigator.push(context, MaterialPageRoute(builder: ((context)=>const BeforeWorkView())));
                      }),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
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
              )
            ],
          ),
          Positioned(
            left: 200.w,
            top: 25.h,
            //right: 10.w,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios,
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
