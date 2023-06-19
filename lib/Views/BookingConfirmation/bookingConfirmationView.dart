import '../../Helpers/import.dart';

class BookingConfirmationView extends StatefulWidget {
  const BookingConfirmationView({Key? key}) : super(key: key);

  @override
  State<BookingConfirmationView> createState() =>
      BookingConfirmationViewState();
}

class BookingConfirmationViewState extends State<BookingConfirmationView> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 3));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _confettiController.play();
    });
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            width: 500,
            height: 800,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConfettiWidget(
                  confettiController: _confettiController,
                  blastDirectionality: BlastDirectionality.explosive,
                  shouldLoop: false,
                  colors: const [
                    Colors.orange,
                    Colors.blue,
                    Colors.green,
                    Colors.red,
                    Colors.yellow
                  ],
                  gravity: 0.3,
                  numberOfParticles: 20,
                  maximumSize: const Size(10, 10),
                  minimumSize: const Size(1, 1),
                  child: Image.asset(
                    'assets/images/check4.jpeg',
                    scale: 2,
                    // height: 300,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                  child: Text(
                    'Your Appoinment Booked Successfully',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Booking Details',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.w500),
                      ),
                      ConfettiWidget(
                        confettiController: _confettiController,
                        blastDirectionality: BlastDirectionality.explosive,
                        shouldLoop: false,
                        colors: const [
                          Colors.orange,
                          Colors.blue,
                          Colors.green,
                          Colors.red,
                          Colors.yellow
                        ],
                        gravity: 0.3,
                        numberOfParticles: 15,
                        maximumSize: const Size(10, 10),
                        minimumSize: const Size(1, 1),
                      ),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 17),
                      children: const [
                        TextSpan(text: 'Booking ID : 9132948425\n'),
                        TextSpan(text: 'Booking Date : 19/12/2023\n'),
                        TextSpan(text: 'Contact Us : 1234567891\n'),
                      ]),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: SizedBox(
                height: 45.h,
                width: 200.w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavBarView()),
                        (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.arrow_back),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(' Return To Home',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: true,
              colors: const [
                Colors.orange,
                Colors.blue,
                Colors.green,
                Colors.red,
                Colors.yellow
              ],
              gravity: 0.3,
              numberOfParticles: 15,
              maximumSize: const Size(10, 10),
              minimumSize: const Size(1, 1),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: const [
                Colors.orange,
                Colors.blue,
                Colors.green,
                Colors.red,
                Colors.yellow
              ],
              gravity: 0.3,
              numberOfParticles: 15,
              maximumSize: const Size(10, 10),
              minimumSize: const Size(1, 1),
            ),
          ),
        ],
      ),
    );
  }
}
