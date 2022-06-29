import 'package:flutter/material.dart';
import 'package:mou_tracker/util/values.dart';
import '/screens/auth_pages/util.dart';
/*
* form element - function from util.dart params - (Main text, hint text)
* button - params- (main text) TODO: pass navigation data as a param
* */
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
        padding: const EdgeInsets.symmetric(horizontal: kFormHorizontal),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: kFormSpacing),

              formElement("EMAIL", "abc@gmail.com"),
              const SizedBox(height: kFormSpacing),

              formElement("DESIGNATION", "Initiator, SPOC, Director"),
              const SizedBox(height: kFormSpacing),

              formElement("PASSWORD", ""),
              TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?",
                      style: TextStyle(color: Colors.black))),
              const SizedBox(height: kFormSpacing),

              Center(
                child: button("SIGN IN"),
              ),
              ElevatedButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, '/home'),
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
