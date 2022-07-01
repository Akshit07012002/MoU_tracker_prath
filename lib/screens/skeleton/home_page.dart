import '/util/values.dart';
import '/screens/skeleton/tracking_screens/Tab_bar/tracking_tab_bar.dart';
import '/screens/skeleton/status_screens/Tab_bar/status_tab_bar.dart';
import '/screens/skeleton/notifications/noti.dart';
import '/screens/skeleton/accounts/account.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

// Todo - bottomNavigationBar needs better design
class _HomePageState extends State<HomePage> {
  int curr = 0;
  static const List<Widget> _widgetList = [
    Status(),
    Noti(),
    Track(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetList.elementAt(curr),
        bottomNavigationBar: _bottomNavbar(curr));
  }

  void _onItemTapped(int index) {
    setState(() => curr = index);
  }

  Widget _bottomNavbar(int curr) {
    return BottomNavigationBar(
      type: BottomNavigationBarType
          .fixed, // the shifting animation overrides any color we put on the nav bar, so removed the animation.
      backgroundColor: kBgClr2,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(
          label: "",
          icon: ImageIcon(AssetImage("assets/checkBox.png")),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.notifications),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: ImageIcon(AssetImage("assets/notepad.png")),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.person_outlined),
        ),
      ],
      currentIndex: curr,
      onTap: _onItemTapped,
    );
  }
}
