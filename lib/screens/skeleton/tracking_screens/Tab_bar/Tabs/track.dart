import 'package:flutter/material.dart';

class TrackTab extends StatefulWidget {
  const TrackTab({Key? key}) : super(key: key);

  @override
  _TrackTabState createState() => _TrackTabState();
}

class _TrackTabState extends State<TrackTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Track Tab"),
      ),
    );
  }
}
