import '../../Helpers/import.dart';

class AfterWorkView extends StatefulWidget {
  const AfterWorkView({Key? key}) : super(key: key);

  @override
  State<AfterWorkView> createState() => AfterWorkViewState();
}

class AfterWorkViewState extends State<AfterWorkView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon:const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Text(
                'After work video',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const VideoUploadView(),
            SizedBox(
              height: 50.h,
            ),
            Container(
              height: 35.h,
              width: 100.w,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: ((context)=>MyPhone())));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
