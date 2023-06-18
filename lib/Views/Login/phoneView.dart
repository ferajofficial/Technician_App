import '../../Helpers/import.dart';

class PhoneView extends StatefulWidget {
  const PhoneView({Key? key}) : super(key: key);

  @override
  State<PhoneView> createState() => PhoneViewState();
}

class PhoneViewState extends State<PhoneView> {
  final TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.75,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/logo_dark.png',
                scale: 1.6,
              ),
              Text(' Repairs\n Duniya',
                  style: GoogleFonts.bigshotOne(
                      color: Colors.white,
                      fontSize: 38.sp,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.7,
            child: Column(
              children: [
                Text('Login',
                    style: GoogleFonts.bigshotOne(
                        color: Colors.white,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 300.h,
                  width: 300.w,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, bottom: 35.h),
                        child: const Text(
                          'Enter Phone Number',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 270.w,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: mobileController,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.phone_android,
                              color: Colors.white,
                            ),
                            fillColor: Colors.black,
                            filled: true,
                            labelText: 'Mobile Number',
                            prefixText: '+91',
                            prefixStyle: const TextStyle(color: Colors.white),
                            labelStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.5),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 38.h,
                        width: 150.w,
                        margin: EdgeInsets.only(top: 80.h),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => const OtpView())));
                            },
                            child: const Text(
                              'Get OTP',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 19),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 35,
              left: 20,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ))
        ],
      ),
    );
  }
}
