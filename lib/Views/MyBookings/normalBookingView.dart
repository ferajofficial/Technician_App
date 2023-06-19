
import '../../Helpers/import.dart';

class NormalBooking extends StatefulWidget {
  const NormalBooking({Key? key}) : super(key: key);

  @override
  State<NormalBooking> createState() => _NormalBookingState();
}
class _NormalBookingState extends State<NormalBooking> {
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
          CustomerDetailsView(),
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
