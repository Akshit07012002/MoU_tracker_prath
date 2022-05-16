import 'package:flutter/material.dart';

class DelayedTab extends StatefulWidget {
  const DelayedTab({Key? key}) : super(key: key);

  @override
  _DelayedTabState createState() => _DelayedTabState();
}

class _DelayedTabState extends State<DelayedTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Delayed Tab"),
      ),
    );
  }
}
