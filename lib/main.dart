import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/skeleton/home_page.dart';
import 'screens/auth_pages/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  /* todo -
      *  - remove overscroll glows, add Refresh animation on pull down
      *  - Add Page to View & Enter Activity details (V. Imp)
      *  - Add sliver Appbar
      *  - Add search screen
  */
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Color(0xff2d376e)));
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/login': (_) => const Auth(),
        '/home': (_) => const HomePage(),
        '/auth': (_) => const Auth(),
      },
    );
  }
}
