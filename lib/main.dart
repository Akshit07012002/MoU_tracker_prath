import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/skeleton/page1.dart';
import 'screens/auth_pages/auth.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
    return MaterialApp(
      initialRoute: '/page1',
      routes: {
        '/login': (_) => const Auth(),
        '/page1' : (_) => const Page1(),
        '/auth' : (_) => const Auth(),
      },
    );
  }
}
