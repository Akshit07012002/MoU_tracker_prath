import 'package:flutter/material.dart';
import 'package:mou_tracker/values.dart';
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
        padding: EdgeInsets.symmetric(horizontal: kFormHorizontal),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: kFormSpacing),

              formElement("EMAIL", "abc@gmail.com"),
              SizedBox(height: kFormSpacing),

              formElement("DESIGNATION", "Initiator, SPOC, Director"),
              SizedBox(height: kFormSpacing),

              formElement("PASSWORD", ""),
              TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?",
                      style: TextStyle(color: Colors.black))),
              SizedBox(height: kFormSpacing),

              Center(
                child: button("SIGN IN"),
              ),
              ElevatedButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, '/page1'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[300])
                  ),
                  child: const Text("go back",style: TextStyle(color: Colors.black),)), // Remove in production
            ],
          ),
        ),
      ),
    );
  }
}
