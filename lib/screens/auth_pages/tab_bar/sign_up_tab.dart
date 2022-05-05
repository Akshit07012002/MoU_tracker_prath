import 'package:flutter/material.dart';
import '/screens/auth_pages/util.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
      child: SingleChildScrollView(
        child: Column(
         children: [
           const SizedBox(height: 40),

           formElement("FIRST NAME", ""),
           const SizedBox(height: 20),

           formElement("LAST NAME", ""),
           const SizedBox(height: 20),

           formElement("EMAIL ADDRESS", "abc@gmail.com"),
           const SizedBox(height: 20),

           formElement("DESIGNATION", "Initiator, SPOC, Director"),
           const SizedBox(height: 20),

           formElement("PASSWORD", ""),
           const SizedBox(height: 20),

           Center(
             child: button("SIGN UP"),
           ),
         ],
          ),
      ),
    ));
  }
}
