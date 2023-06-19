import '../../Helpers/import.dart';
class BookingView extends StatefulWidget {
  const BookingView({Key? key}) : super(key: key);

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  String selectedOption = 'Pending Bookings';
  List<String> options = ['Pending Bookings', 'Rejected', 'Workdone'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60,bottom: 20),
              child: Text('My Bookings',
                style: TextStyle(fontSize: 27.sp, fontWeight: FontWeight.w700, color: Colors.black),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedOption,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedOption = newValue!;
                    });
                  },
                  items: options.map((String value) {
                    final textStyle = TextStyle(
                      color: value == 'Rejected' ? Colors.red : value == 'Workdone' ? Colors.green : Color(0xff473dcc) ,
                    );
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style: textStyle),
                    );
                  }).toList(),
                ),
              ),
            ),
            Visibility(
              visible: selectedOption == 'Pending Bookings',
              child: PendingBookingView()
            ),
            Visibility(
              visible: selectedOption == 'Rejected',
              child: RejectedBookingView(),
            ),
            Visibility(
              visible: selectedOption == 'Workdone',
              child: WorkdoneView(),
            ),
          ],
        ),
      ),
    );
  }
}
