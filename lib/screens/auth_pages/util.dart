import 'package:flutter/material.dart';
import '/values.dart';

Widget formElement(String text, String hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: kFormSpacing / 2),
      TextFormField(
        onChanged: (val) {},
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: kBorderWidth),
          ),
          focusedBorder: OutlineInputBorder(
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
            ContinuousRectangleBorder(side: BorderSide(width: kBorderWidth))),
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(Colors.white)),
    child: Text(text, style: const TextStyle(color: Colors.black)),
  );
}
