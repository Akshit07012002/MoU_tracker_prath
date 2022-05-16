import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("User Account"),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/login'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[300])
                ),
                child: const Text("Sign-out",style: TextStyle(color: Colors.black),)), // Remove in production
          )
        ],
      ),
    );
  }
}
