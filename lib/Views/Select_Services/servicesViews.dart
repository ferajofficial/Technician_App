import '../../Helpers/import.dart';

class SelectServicesView extends StatefulWidget {
  const SelectServicesView({super.key});

  @override
  State<SelectServicesView> createState() => _SelectServicesViewState();
}

class _SelectServicesViewState extends State<SelectServicesView> {
  // bool isSelected = false;
  List<bool> isSelectedList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  void resetSelection() {
    setState(() {
      isSelectedList = List.generate(isSelectedList.length, (index) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Select Your Service",
          style: GoogleFonts.bigshotOne(
              textStyle: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 40.h,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Search Services",
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black38,
                      fontWeight: FontWeight.w500,
                    )),
                    //suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Appliances",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[500])),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChip(
                  elevation: 3,
                  label: Text(
                    "Washing Machine",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w400,
                      color: isSelectedList[0] ? Colors.green : Colors.blue,
                    )),
                  ),
                  selected: isSelectedList[0],
                  onSelected: (bool value) {
                    setState(() {
                      isSelectedList[0] = value;
                    });
                  },
                  avatar: const CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                        "assets/images/appliences/washing-machine.png"),
                  ),
                  backgroundColor: Colors.blue[50],
                  selectedColor: Colors.green[50],
                  checkmarkColor: Colors.white,
                ),
                FilterChip(
                  elevation: 3,
                  label: Text(
                    "Fan",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w400,
                      color: isSelectedList[1] ? Colors.green : Colors.blue,
                    )),
                  ),
                  selected: isSelectedList[1],
                  onSelected: (bool value) {
                    setState(() {
                      isSelectedList[1] = value;
                    });
                  },
                  avatar: const CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage("assets/images/appliences/Fan.png"),
                  ),
                  backgroundColor: Colors.blue[50],
                  selectedColor: Colors.green[100],
                  checkmarkColor: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilterChip(
                  elevation: 3,
                  label: Text(
                    "Air Conditioner",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w400,
                      color: isSelectedList[2] ? Colors.green : Colors.blue,
                    )),
                  ),
                  selected: isSelectedList[2],
                  onSelected: (bool value) {
                    setState(() {
                      isSelectedList[2] = value;
                    });
                  },
                  avatar: const CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                        "assets/images/appliences/air-conditioner.png"),
                  ),
                  backgroundColor: Colors.blue[50],
                  selectedColor: Colors.green[100],
                  checkmarkColor: Colors.white,
                ),
                FilterChip(
                  elevation: 3,
                  label: Text(
                    "Air Cooler",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w400,
                      color: isSelectedList[3] ? Colors.green : Colors.blue,
                    )),
                  ),
                  selected: isSelectedList[3],
                  onSelected: (bool value) {
                    setState(() {
                      isSelectedList[3] = value;
                    });
                  },
                  avatar: const CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage("assets/images/appliences/aircooler.png"),
                  ),
                  backgroundColor: Colors.blue[50],
                  selectedColor: Colors.green[100],
                  checkmarkColor: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChip(
                  elevation: 3,
                  label: Text(
                    "Refrigerator",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w400,
                      color: isSelectedList[4] ? Colors.green : Colors.blue,
                    )),
                  ),
                  selected: isSelectedList[4],
                  onSelected: (bool value) {
                    setState(() {
                      isSelectedList[4] = value;
                    });
                  },
                  avatar: const CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage("assets/images/appliences/refrigerator.png"),
                  ),
                  backgroundColor: Colors.blue[50],
                  selectedColor: Colors.green[100],
                  checkmarkColor: Colors.white,
                ),
                FilterChip(
                  elevation: 3,
                  label: Text(
                    "Geyser",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w400,
                      color: isSelectedList[5] ? Colors.green : Colors.blue,
                    )),
                  ),
                  selected: isSelectedList[5],
                  onSelected: (bool value) {
                    setState(() {
                      isSelectedList[5] = value;
                    });
                  },
                  avatar: const CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage("assets/images/appliences/geyser.png"),
                  ),
                  backgroundColor: Colors.blue[50],
                  selectedColor: Colors.green[100],
                  checkmarkColor: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChip(
                  elevation: 3,
                  label: Text(
                    "Microwave Oven",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w400,
                      color: isSelectedList[6] ? Colors.green : Colors.blue,
                    )),
                  ),
                  selected: isSelectedList[6],
                  onSelected: (bool value) {
                    setState(() {
                      isSelectedList[6] = value;
                    });
                  },
                  avatar: const CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage("assets/images/appliences/oven.png"),
                  ),
                  backgroundColor: Colors.blue[50],
                  selectedColor: Colors.green[100],
                  checkmarkColor: Colors.white,
                ),
                FilterChip(
                  elevation: 3,
                  label: Text(
                    "TV",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w400,
                      color: isSelectedList[7] ? Colors.green : Colors.blue,
                    )),
                  ),
                  selected: isSelectedList[7],
                  onSelected: (bool value) {
                    setState(() {
                      isSelectedList[7] = value;
                    });
                  },
                  avatar: const CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage("assets/images/appliences/tv.png"),
                  ),
                  backgroundColor: Colors.blue[50],
                  selectedColor: Colors.green[100],
                  checkmarkColor: Colors.white,
                ),
              ],
            ),
            Text(
              "Services",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[500])),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilterChip(
                  elevation: 3,
                  label: Text(
                    "CCTV",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w400,
                      color: isSelectedList[8] ? Colors.green : Colors.blue,
                    )),
                  ),
                  selected: isSelectedList[8],
                  onSelected: (bool value) {
                    setState(() {
                      isSelectedList[8] = value;
                    });
                  },
                  avatar: const CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage("assets/images/appliences/cctv.png"),
                  ),
                  backgroundColor: Colors.blue[50],
                  selectedColor: Colors.green[100],
                  checkmarkColor: Colors.white,
                ),
                FilterChip(
                  elevation: 3,
                  label: Text(
                    "Electrician",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w400,
                      color: isSelectedList[9] ? Colors.green : Colors.blue,
                    )),
                  ),
                  selected: isSelectedList[9],
                  onSelected: (bool value) {
                    setState(() {
                      isSelectedList[9] = value;
                    });
                  },
                  avatar: const CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage("assets/images/appliences/electrician.png"),
                  ),
                  backgroundColor: Colors.blue[50],
                  selectedColor: Colors.green[100],
                  checkmarkColor: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChip(
                  elevation: 3,
                  label: Text(
                    "Paint Services",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w400,
                      color: isSelectedList[10] ? Colors.green : Colors.blue,
                    )),
                  ),
                  selected: isSelectedList[10],
                  onSelected: (bool value) {
                    setState(() {
                      isSelectedList[10] = value;
                    });
                  },
                  avatar: const CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage("assets/images/appliences/paint.png"),
                  ),
                  backgroundColor: Colors.blue[50],
                  selectedColor: Colors.green[100],
                  checkmarkColor: Colors.white,
                ),
                FilterChip(
                  elevation: 3,
                  label: Text(
                    "Plumbing",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w400,
                      color: isSelectedList[11] ? Colors.green : Colors.blue,
                    )),
                  ),
                  selected: isSelectedList[11],
                  onSelected: (bool value) {
                    setState(() {
                      isSelectedList[11] = value;
                    });
                  },
                  avatar: const CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage("assets/images/appliences/plumbing.png"),
                  ),
                  backgroundColor: Colors.blue[50],
                  selectedColor: Colors.green[100],
                  checkmarkColor: Colors.white,
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: FilterChip(
                elevation: 3,
                label: Text(
                  "Unisex Salon",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 16.5.sp,
                    fontWeight: FontWeight.w400,
                    color: isSelectedList[12] ? Colors.green : Colors.blue,
                  )),
                ),
                selected: isSelectedList[12],
                onSelected: (bool value) {
                  setState(() {
                    isSelectedList[12] = value;
                  });
                },
                avatar: const CircleAvatar(
                  // radius: 50,
                  backgroundColor: Colors.transparent,
                  backgroundImage:
                      AssetImage("assets/images/appliences/salon.png"),
                ),
                backgroundColor: Colors.blue[50],
                selectedColor: Colors.green[100],
                checkmarkColor: Colors.white,
              ),
            ),
            // Wrap(
            //   spacing: 8,
            //   direction: Axis.horizontal,
            //   children: filterChips(),
            // )
          ],
        ),
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 40.h,
              width: 130.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 3,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IdentityProofView()),
                  );
                },
                child: Text(
                  'Next',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // List<Chips> chipsList = [
  //   Chips(
  //     "Washing Machine",
  //     Colors.blue[50],
  //     false,
  //     'assets/images/appliences/washing-machine.png',
  //   ),
  //   Chips(
  //     "Fan",
  //     Colors.blue[50],
  //     false,
  //     'assets/images/appliences/Fan.png',
  //   ),
  //   Chips(
  //     "Air Conditioner",
  //     Colors.blue[50],
  //     false,
  //     'assets/images/appliences/air-conditioner.png',
  //   ),
  //   Chips(
  //     "Air Cooler",
  //     Colors.blue[50],
  //     false,
  //     'assets/images/appliences/aircooler.png',
  //   ),
  //   Chips(
  //     "Refrigerator",
  //     Colors.blue[50],
  //     false,
  //     'assets/images/appliences/refrigerator.png',
  //   ),
  //   Chips(
  //     "Geyser",
  //     Colors.blue[50],
  //     false,
  //     'assets/images/appliences/geyser.png',
  //   ),
  //   Chips(
  //     "Microwave Oven",
  //     Colors.blue[50],
  //     false,
  //     'assets/images/appliences/oven.png',
  //   ),
  //   Chips(
  //     "TV",
  //     Colors.blue[50],
  //     false,
  //     'assets/images/appliences/tv.png',
  //   ),
  //   Chips(
  //     "CCTV",
  //     Colors.blue[50],
  //     false,
  //     'assets/images/appliences/cctv.png',
  //   ),
  //   Chips(
  //     "Cleaning Services",
  //     Colors.blue[50],
  //     false,
  //     'assets/images/appliences/cleaning.png',
  //   ),
  //   Chips(
  //     "Paint Services",
  //     Colors.blue[50],
  //     false,
  //     'assets/images/appliences/paint.png',
  //   ),
  //   Chips(
  //     "Others",
  //     Colors.blue[50],
  //     false,
  //     'assets/images/appliences/others.png',
  //   ),
  // ];
  // List<Widget> filterChips() {
  //   List<Widget> chips = [];
  //   for (int i = 0; i < chipsList.length; i++) {
  //     Widget item = Padding(
  //       padding: const EdgeInsets.only(left: 10, right: 5),
  //       child: FilterChip(
  //         elevation: 2,
  //         label: Text(chipsList[i].label),
  //         labelStyle: GoogleFonts.poppins(
  //           textStyle: TextStyle(
  //             fontSize: 16.5.sp,
  //             fontWeight: FontWeight.w400,
  //             color: isSelected ? Colors.green : Colors.blue,
  //           ),
  //         ),
  //         avatar: chipsList[i].avatar,
  //         backgroundColor: chipsList[i].color,
  //         selectedColor: Colors.green[100],
  //         selected: chipsList[i].isSelected,
  //         onSelected: (bool value) {
  //           setState(() {
  //             chipsList[i].isSelected = value;
  //           });
  //         },
  //       ),
  //     );
  //     chips.add(item);
  //   }
  //   return chips;
  // }
}

// class Chips {
//   String label;
//   Color? color;
//   bool isSelected;
//   Widget? avatar;
//   Chips(this.label, this.color, this.isSelected, String s);
// }
