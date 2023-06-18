import '../../Helpers/import.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.85,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 65.h),
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/logo.jpeg'),
                        radius: 35,
                      ),
                      Text(
                        ' Repairs Duniya',
                        style: TextStyle(
                          fontSize: 29.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      'assets/images/man.png',
                      height: 240.h,
                    ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.1,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                                fontSize: 19.sp, fontWeight: FontWeight.w500),
                            children: [
                              const TextSpan(
                                  text: '\u2022 Earn Upto 28,000 Per Month\n'),
                              WidgetSpan(
                                  child: SizedBox(
                                height: 29.h,
                              )),
                              const TextSpan(
                                  text: '\u2022 Get works in your area\n'),
                              WidgetSpan(
                                  child: SizedBox(
                                height: 29.h,
                              )),
                              const TextSpan(
                                  text: '\u2022 Earn more profits\n'),
                              WidgetSpan(
                                  child: SizedBox(
                                height: 29.h,
                              )),
                              const TextSpan(
                                  text:
                                      '\u2022 Earn rewards and bonus upto 4000'),
                            ]),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 35.h,
                      width: 100.w,
                      margin: EdgeInsets.only(bottom: 30.h),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const PhoneView())));
                          },
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
