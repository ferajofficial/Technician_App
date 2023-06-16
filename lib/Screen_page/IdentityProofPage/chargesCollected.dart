import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class ChargesCollected extends StatefulWidget {
  const ChargesCollected({Key? key}) : super(key: key);

  @override
  State<ChargesCollected> createState() => _ChargesCollectedState();
}

class _ChargesCollectedState extends State<ChargesCollected> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController chargeController=TextEditingController();
  final TextEditingController totalController=TextEditingController();
  final TextEditingController sparePartsController=TextEditingController();

  @override
  void dispose() {
    chargeController.dispose();
    totalController.dispose();
    sparePartsController.dispose();
    super.dispose();
  }
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // All fields are valid, perform the desired actions
      // Submit the form data
      print('Form submitted');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Charges Collected',
                      style: GoogleFonts.italiana(fontSize: 28.sp, fontWeight: FontWeight.bold, color: Colors.black,),
                    ),
                  ),
                ),
                Container(
                  width: 300.w,
                  padding: EdgeInsets.only(top: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: totalController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Total collected ',
                      labelStyle: const TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value){
                      if(value==null||value.isEmpty )
                        return 'Please enter the total collected amount';
                    },
                  ),
                ),
                SizedBox(height: 30.h,),
                Container(
                  width: 300.w,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: chargeController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Spare parts charges',
                      labelStyle: const TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty)
                        return 'Please enter the spare parts charges';
                    },
                  ),
                ),
                SizedBox(height: 30.h,),
                Container(
                  height: 200,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    minLines: 8,
                    maxLines: 200,
                    controller: sparePartsController,
                    keyboardType: TextInputType.multiline,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintMaxLines: 2,
                      hintText: 'Ex: Coil,Capacitor,etc...',
                      labelText: 'Spare parts',
                      labelStyle: const TextStyle(color: Colors.black,fontSize: 17),
                      alignLabelWithHint: true,
                      hintStyle: TextStyle(color: Colors.black, fontSize: 15, fontStyle: FontStyle.italic,),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.black),
                      ),
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty)
                        return 'Please enter the spare parts';
                    },
                  ),
                ),
                SizedBox(height: 50.h,),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 35.h,
                  width:130.w,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextButton(
                    onPressed: (){
                      _submitForm();
                    },
                    child: Text('Submit',
                      style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
