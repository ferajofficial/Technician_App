import 'package:repairs_duniya_s/Helpers/import.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return ScreenUtilInit(builder: (context,index){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavigationBar1(),
      );
    },

=======
    return ScreenUtilInit(
      builder: (context, index) {
        return const MaterialApp(
            debugShowCheckedModeBanner: false, home: WelcomeView()
            // const BottomNavBarView(),
            );
      },
>>>>>>> 6f71788ffe7843ebb65d31399878bb7546be592b
    );
  }
}
