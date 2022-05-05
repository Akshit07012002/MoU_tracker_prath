import 'package:flutter/material.dart';

class Track extends StatefulWidget {
  const Track({Key? key}) : super(key: key);

  @override
  _TrackState createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Tracking",
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
              Tab(text: "INFO"),
              Tab(text: "ENGAGEMENT"),
              Tab(text: "TRACK"),
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
