import '../../Helpers/import.dart';

class RewardView extends StatefulWidget {
  const RewardView({Key? key}) : super(key: key);

  @override
  State<RewardView> createState() => RewardViewState();
}

class RewardViewState extends State<RewardView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Text(
            'Complete 7 Booking with 7 days to get the rewards',
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Image.asset('images/home_image.jpeg')
      ],
    );
  }
}
