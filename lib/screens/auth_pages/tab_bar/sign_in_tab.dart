import 'package:flutter/material.dart';
import '/screens/auth_pages/util.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              formElement("EMAIL", "abc@gmail.com"),
              const SizedBox(height: 20),
              formElement("DESIGNATION", "Initiator, SPOC, Director"),
              const SizedBox(height: 20),
              formElement("PASSWORD", ""),
              TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?",
                      style: TextStyle(color: Colors.black))),
              const SizedBox(height: 20),
              Center(
                child: button("SIGN IN"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
