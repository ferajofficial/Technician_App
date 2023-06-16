import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairs_duniya_s/Screen_page/IdentityProofPage/identityProof.dart';
import 'package:repairs_duniya_s/Screen_page/MyEarnings/my_earnings.dart';
import 'package:repairs_duniya_s/Screen_page/UploadVideoPages/before_work_page.dart';
import 'package:repairs_duniya_s/Screen_page/WelcomePage/welcom_page.dart';
import 'package:repairs_duniya_s/bottomNavigationBar.dart';

import 'Screen_page/RewardPage/reward_page.dart';

// function to trigger app build
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
                color: Colors.black,
                child:  DrawerHeader(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome Partner",
                          style: TextStyle(fontSize: 22.sp, color: Colors.white,),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 45.h),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Text("A",
                                style: TextStyle(fontSize: 30.sp, color: Colors.black),),
                              radius: 25,
                            ),
                            SizedBox(width: 17.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name",
                                  style: TextStyle(fontSize: 18.sp, color: Colors.white),),
                                Text(
                                  "a@gmail.com",
                                  style: TextStyle(fontSize: 15.sp, color: Colors.white,fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBar1(num:1)));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.attach_money,
                      color: Colors.black,
                    ),
                    title: const Text('Your Earning'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyEarnings()));
                    },
                  ),
                  ListTile(
                      leading: const Icon(
                        Icons.task_outlined,
                        color: Colors.black,
                      ),
                      title: const Text('WorkDone'),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context)=>IdentityProof())));
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
            left: 150.w,
            top: 110.h,
            right: 10.w,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}