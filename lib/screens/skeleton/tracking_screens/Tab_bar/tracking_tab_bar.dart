import 'package:flutter/material.dart';
import '/screens/skeleton/tracking_screens/Tab_bar/Tabs/engagement.dart';
import '/screens/skeleton/tracking_screens/Tab_bar/Tabs/info.dart';
import '/screens/skeleton/tracking_screens/Tab_bar/Tabs/track.dart';
import '/values.dart';


class Track extends StatefulWidget {
  const Track({Key? key}) : super(key: key);

  @override
  _TrackState createState() => _TrackState();
}

class _TrackState extends State<Track> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: kTabBarHorizontal,vertical: kTabBarVertical),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(width: kBorderWidth, color: Colors.black),
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Colors.grey[400],
                ),
                tabs: const [
                  Tab(text: "INFO"),
                  Tab(text: "ENGAGEMENT"),
                  Tab(text: "TRACK"),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                EngagementTab(),
                InfoTab(),
                TrackTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
