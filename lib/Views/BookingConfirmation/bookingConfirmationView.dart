import 'dart:math';

import '../../Helpers/import.dart';

class BookingConfirmationView extends StatefulWidget {
  const BookingConfirmationView({Key? key}) : super(key: key);

  @override
  State<BookingConfirmationView> createState() => BookingConfirmationViewState();
}

class BookingConfirmationViewState extends State<BookingConfirmationView> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 3));
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
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConfettiWidget(
                    confettiController: _confettiController,
                    blastDirectionality: BlastDirectionality.explosive,
                    shouldLoop: false,
                    colors: const [Colors.orange, Colors.blue, Colors.green,Colors.red,Colors.yellow],
                    gravity: 0.3,
                    numberOfParticles:20,
                    maximumSize: const Size(10, 10),
                    minimumSize: const Size(1,1),
                    child: Image.asset('images/check4.jpeg',scale: 2,),
                ),
               const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                  child: Text('Your Appoinment Booked Successfully',
                    style: TextStyle(color: Colors.green,fontSize: 30,fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45,bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Booking Details',
                        style: TextStyle(color: Colors.black,fontSize: 27,fontWeight: FontWeight.w500),),
                      ConfettiWidget(
                          confettiController: _confettiController,
                          blastDirectionality: BlastDirectionality.explosive,
                          shouldLoop: false,
                          colors: const [Colors.orange, Colors.blue, Colors.green,Colors.red,Colors.yellow],
                          gravity: 0.3,
                          numberOfParticles:15,
                         maximumSize: const Size(10, 10),
                          minimumSize:const  Size(1,1),

                      ),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(color: Colors.grey.shade600,fontSize: 17),
                      children: const [
                        TextSpan(text: 'Booking ID : 9132948425\n'),
                        TextSpan(text: 'Booking Date : 19/12/2023\n'),
                        TextSpan(text: 'Contact Us : 1234567891\n'),
                      ]
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ElevatedButton(
                  onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(230.w, 52.h),
                  ),
                ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back),
                      Text(' Return To Home',)
                    ],
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
              colors: const [Colors.orange, Colors.blue, Colors.green,Colors.red,Colors.yellow],
              gravity: 0.3,
              numberOfParticles:15,
              maximumSize: const Size(10, 10),
              minimumSize: const Size(1,1),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: const [Colors.orange, Colors.blue, Colors.green,Colors.red,Colors.yellow],
              gravity: 0.3,
              numberOfParticles:15,
              maximumSize: const Size(10, 10),
              minimumSize: const Size(1,1),
            ),
          ),

        ],
      ),
    );
  }
}
