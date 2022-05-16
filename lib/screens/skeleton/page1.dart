import '/screens/skeleton/tracking_screens/Tab_bar/tracking_tab_bar.dart';
import '/screens/skeleton/status_screens/Tab_bar/status_tab_bar.dart';
import '/screens/skeleton/notifications/noti.dart';
import '/screens/skeleton/accounts/account.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
    // print(index);
    setState(() => curr = index);
  }

  Widget _bottomNavbar(int curr) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
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
