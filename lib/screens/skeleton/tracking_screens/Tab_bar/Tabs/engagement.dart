import 'package:flutter/material.dart';

import '/models/activity.dart';

class EngagementTab extends StatefulWidget {
  const EngagementTab({Key? key}) : super(key: key);

  @override
  _EngagementTabState createState() => _EngagementTabState();
}

class _EngagementTabState extends State<EngagementTab> {
  // Receive Activity information here
  List<Activity> activities = [
    Activity(
        name: "Workshop",
        desc: "Lorem ipsum dolor sit amet, consectetur",
        status: true),
    Activity(
        name: "Placement",
        desc: "Lorem ipsum dolor sit amet, consectetur",
        status: false),
    Activity(
        name: "Workshop",
        desc: "Lorem ipsum dolor sit amet, consectetur",
        status: false)
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
              itemBuilder: (_, i) => _buildActivityTile(activities[i]),
              separatorBuilder: (_, i) => const SizedBox(height: 12),
              itemCount: activities.length),
        )
      ],
    );
  }

  Widget _buildActivityTile(Activity activity) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffedf9ff),
        ),
        child: ListTile(
          leading: activity.status == true
              ? const Icon(Icons.check_box_outlined)
              : const Icon(Icons.check_box_outline_blank),
          title: Text(activity.name),
          subtitle: Text(activity.desc),
          trailing: activity.status == true ? _buildTextButton("View") : null,
        ),
      ),
    );
  }

  TextButton _buildTextButton(String buttonTxt) {
    return TextButton(
          onPressed: () {  },
          child: Text(buttonTxt),
        );
  }
}
