import 'package:flutter/material.dart';
import '/screens/skeleton/tracking_screens/Tab_bar/Tabs/engagement.dart';
import '/screens/skeleton/tracking_screens/Tab_bar/Tabs/info.dart';
import '/screens/skeleton/tracking_screens/Tab_bar/Tabs/track.dart';
import '/util/values.dart';

class Track extends StatefulWidget {
  const Track({Key? key}) : super(key: key);

  @override
  _TrackState createState() => _TrackState();
}

class _TrackState extends State<Track> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List colors = [
    kTabBarGreen,
    kTabBarYellow,
    kTabBarBlue,
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2d376e),
        centerTitle: true,
        title: const Text(
          "Tracking",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kTabBarHorizontal, vertical: kTabBarVertical),
            child: Container(
              padding: const EdgeInsets.all(2.0),
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(width: kBorderWidth, color: Colors.black),
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  16.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                unselectedLabelColor: Colors.grey,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16.0,
                  ),
                  color: colors[_tabController.index],
                ),
                tabs: const [
                  Tab(text: "INFO"),
                  Tab(text: "ENGAGEMENT"),
                  Tab(text: "TRACK"),
                ],
                labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
                unselectedLabelStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                InfoTab(),
                EngagementTab(),
                TrackTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
