import 'package:repairs_duniya_s/Helpers/import.dart';

class BottomNavBarView extends StatefulWidget {
  final int? num;
  const BottomNavBarView({super.key, this.num});

  @override
  State<BottomNavBarView> createState() => BottomNavBarViewState();
}

class BottomNavBarViewState extends State<BottomNavBarView> {
  int _currentIndex = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Widget> _pagesfooter=[
    // const HomeView(),
    const NormalBookingView(),
    //const UrgentBook(),
    const RewardView(),
    const ProfileView()
  ];

  @override
  void initState() {
    final num = widget.num;
    if (num != null) {
      _currentIndex = num;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      key: scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: const Mydrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
              //close drawer, if drawer is open
            } else {
              scaffoldKey.currentState!.openDrawer();
              //open drawer, if drawer is closed
            }
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              children: [_pagesfooter[_currentIndex]],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
