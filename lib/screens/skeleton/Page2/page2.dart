import 'package:flutter/material.dart';
import '/screens/skeleton/notifications/noti.dart';
import 'Tab_bar/tracking_tab_bar.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int curr = 0;
  static const List<Widget> _widgetList = [
    Track(),
    Noti(),
    Noti(),
    Noti(),
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
          icon: Icon(Icons.person),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.notifications),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.notifications),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.person),
        ),
      ],
      currentIndex: curr,
      onTap: _onItemTapped,
    );
  }
}
