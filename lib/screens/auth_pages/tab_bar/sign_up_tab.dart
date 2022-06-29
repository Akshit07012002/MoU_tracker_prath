import 'package:flutter/material.dart';
import '../../../util/values.dart';
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
      padding: EdgeInsets.symmetric(horizontal: kFormHorizontal),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: kFormSpacing),

            formElement("FIRST NAME", ""),
            SizedBox(height: kFormSpacing),

            formElement("LAST NAME", ""),
            SizedBox(height: kFormSpacing),

            formElement("EMAIL ADDRESS", "abc@gmail.com"),
            SizedBox(height: kFormSpacing),

            formElement("DESIGNATION", "Initiator, SPOC, Director"),
            SizedBox(height: kFormSpacing),

            formElement("PASSWORD", ""),
            SizedBox(height: kFormSpacing),

            Center(
              child: button("SIGN UP"),
            ),
          ],
        ),
      ),
    ));
  }
}
