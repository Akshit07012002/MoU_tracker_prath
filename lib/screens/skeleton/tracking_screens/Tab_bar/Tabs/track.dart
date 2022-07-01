import 'package:flutter/material.dart';

class TrackTab extends StatefulWidget {
  const TrackTab({Key? key}) : super(key: key);

  @override
  _TrackTabState createState() => _TrackTabState();
}

class _TrackTabState extends State<TrackTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Track Tab"),
    );
  }
}
