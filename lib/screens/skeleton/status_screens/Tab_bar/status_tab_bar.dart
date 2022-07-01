import '/util/values.dart';
import 'Tabs/delayed_tab.dart';
import 'Tabs/on_track_tab.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kTabBarHorizontal,vertical: kTabBarVertical),
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
                  Tab(text: "ON TRACK"),
                  Tab(text: "DELAYED"),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                OnTrackTab(),
                DelayedTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
