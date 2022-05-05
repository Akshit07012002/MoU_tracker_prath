import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Approvals",
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.search, color: Colors.black),
            ),
          ],
          bottom: const TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: "ON TRACK"),
              Tab(text: "DELAYED"),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Color is different only for differentiating, change later"),
            ),
            // TabBarView(
            // children: [
            //     onTrackTab(),
            //     DelayedTab(),
            // ]),

          ],
        ),
      ),
    );
  }
}
