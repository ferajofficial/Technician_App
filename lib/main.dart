import 'package:repairs_duniya_s/Helpers/import.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, index) {
        return const MaterialApp(
            debugShowCheckedModeBanner: false, home: WelcomeView()
            // const BottomNavBarView(),
            );
      },
    );
  }
}
