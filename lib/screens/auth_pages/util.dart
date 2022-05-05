import 'package:flutter/material.dart';

Widget formElement(String text, String hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      TextFormField(
        onChanged: (val) {},
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.5),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.5),
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
            const ContinuousRectangleBorder(side: BorderSide(width: 1.5))),
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(Colors.white)),
    child: Text(text, style: const TextStyle(color: Colors.black)),
  );
}
