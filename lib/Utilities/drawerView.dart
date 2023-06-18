

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
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Reapirs Duniya Welcomes You",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 35.h),
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
                    title: const Text('Subscription'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.card_giftcard,
                      color: Colors.black,
                    ),
                    title: const Text('Rewards/Bonus'),
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
                      color: Colors.black,
                    ),
                    title: const Text('Your Earning'),
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
                      title: const Text('WorkDone'),
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
                    title: const Text('Logout'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )
            ],
          ),
          Positioned(
            left: 250.w,
            top: 08.h,
            //right: 10.w,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
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
