import 'package:flutter/material.dart';
import '/util/values.dart';
import '/screens/auth_pages/tab_bar/sign_in_tab.dart';
import '/screens/auth_pages/tab_bar/sign_up_tab.dart';


/* Authentication page - Login & sign-up
* Custom Tab bar - Container + rounded border
* */

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "MOU TRACKER",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kTabBarHorizontal,vertical: kTabBarVertical),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(width: kBorderWidth, color: Colors.black),
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Colors.grey[400],
                ),
                tabs: const [
                  Tab(text: "SIGN IN"),
                  Tab(text: "SIGN UP"),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                SignIn(),
                SignUp(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
