import 'package:flutter/material.dart';

class InfoTab extends StatefulWidget {
  const InfoTab({Key? key}) : super(key: key);

  @override
  _InfoTabState createState() => _InfoTabState();
}

class _InfoTabState extends State<InfoTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Info Tab"),
      ),
    );
  }
}
