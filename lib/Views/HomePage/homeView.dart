import '../../Helpers/import.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                      padding: EdgeInsets.symmetric(
                          vertical: 45.h, horizontal: 20.w),
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
                            style: GoogleFonts.poppins(
                                fontSize: 12.5.sp,
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
                padding: const EdgeInsets.only(right: 120, top: 5),
                child: Text(
                  'Recent Bookings',
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              Image.asset('assets/images/home_image.jpeg')
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavBarView(),
    );
  }
}
