import '../../Helpers/import.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _MyProfileState();
}

class _MyProfileState extends State<ProfileView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  void dispose() {
    mobileController.dispose();
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('Form submitted');
    }
  }

  File? _image;
  final picker = ImagePicker();

  Future<void> _pickImage1(ImageSource source) async {
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30))),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 430.h,
            width: 300.w,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black)),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.h, bottom: 5.h),
                    child: const Text(
                      'My Profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Upload Image'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  GestureDetector(
                                    child: const Text('Camera'),
                                    onTap: () {
                                      _pickImage1(ImageSource.camera);
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  const Padding(padding: EdgeInsets.all(8.0)),
                                  GestureDetector(
                                    child: const Text('Gallery'),
                                    onTap: () {
                                      _pickImage1(ImageSource.gallery);
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: CircleAvatar(
                      backgroundImage: _image != null
                          ? FileImage(_image!)
                          : const AssetImage('assets/images/profile.png')
                              as ImageProvider<Object>,
                      backgroundColor: Colors.transparent,
                      radius: 50,
                    ),
                  ),
                  //* if the serviceholder exists before then only shows this
                  //* ratings bar upon his/her profile other wise no need to show here */
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 10.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       const Icon(Icons.star, color: Colors.amber),
                  //       const Icon(Icons.star, color: Colors.amber),
                  //       const Icon(Icons.star, color: Colors.amber),
                  //       const Icon(Icons.star_half, color: Colors.amber),
                  //       const Icon(Icons.star_outline, color: Colors.amber),
                  //       Text(
                  //         "(4.6)",
                  //         style: GoogleFonts.poppins(
                  //           textStyle:
                  //               TextStyle(fontSize: 15.sp, color: Colors.black),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  Container(
                    width: 270.w,
                    padding: const EdgeInsets.only(top: 27),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person_outline_sharp,
                          color: Colors.black,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Name',
                        labelStyle: const TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'please enter name';
                      },
                    ),
                  ),
                  Container(
                    width: 270.w,
                    padding: const EdgeInsets.only(top: 27),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: mobileController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.phone_android,
                          color: Colors.black,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Mobile Number',
                        prefixText: '+91',
                        prefixStyle: const TextStyle(color: Colors.black),
                        labelStyle: const TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'please enter name';
                      },
                    ),
                  ),
                  Container(
                    width: 270.w,
                    padding: const EdgeInsets.only(top: 27),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Email',
                        labelStyle: const TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'please enter name';
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 380.h,
          left: 120.w,
          child: Container(
            height: 40.h,
            width: 120.w,
            margin: EdgeInsets.only(top: 80.h, bottom: 20.h),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(40)),
            child: TextButton(
                onPressed: () {
                  _submitForm();
                },
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.white, fontSize: 19),
                )),
          ),
        ),
      ],
    );
  }
}
