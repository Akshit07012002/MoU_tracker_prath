import 'package:flutter/material.dart';
import '../../util/values.dart';
/*
* this file contains common widgets between sign-in & sign-up
* form element func - Creates form element for login & sign up pages
* */
Widget formElement(String text, String hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: kFormSpacing / 2),
      TextFormField(
        onChanged: (val) {},
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: kBorderWidth),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: kBorderWidth),
          ),
        ),
      ),
    ],
  );
}

Widget button(String text) {
  return ElevatedButton(
    onPressed: () {},
    style: ButtonStyle(
        shape: MaterialStateProperty.all<ContinuousRectangleBorder>(
            const ContinuousRectangleBorder(side: BorderSide(width: kBorderWidth))),
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(Colors.white)),
    child: Text(text, style: const TextStyle(color: Colors.black)),
  );
}
