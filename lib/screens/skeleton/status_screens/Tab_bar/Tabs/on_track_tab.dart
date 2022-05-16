import 'package:flutter/material.dart';

class OnTrackTab extends StatefulWidget {
  const OnTrackTab({Key? key}) : super(key: key);

  @override
  _OnTrackTabState createState() => _OnTrackTabState();
}

class _OnTrackTabState extends State<OnTrackTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("On Track Tab"),
      ),
    );
  }
}
