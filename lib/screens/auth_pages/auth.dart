import 'package:flutter/material.dart';
import '/screens/auth_pages/tab_bar/sign_in_tab.dart';
import '/screens/auth_pages/tab_bar/sign_up_tab.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "MOU TRACKER",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          bottom: const TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [Tab(text: "SIGN IN"), Tab(text: "SIGN UP")],
          ),
        ),
        body: Column(
          children: const [
            Expanded(
              child: TabBarView(
                children: [
                  SignIn(),
                  SignUp(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
