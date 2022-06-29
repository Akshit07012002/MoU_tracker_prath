import 'package:flutter/material.dart';
import '/util/values.dart';
import '/models/mou.dart';

class InfoTab extends StatefulWidget {
  const InfoTab({Key? key}) : super(key: key);

  @override
  _InfoTabState createState() => _InfoTabState();
}

class _InfoTabState extends State<InfoTab> {
  MOU mou = MOU(
      title: "MOU 1",
      desc:
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam posuere aliquam ex a auctor..''',
      day: 2,
      month: months[1],
      year: 2022,
      amount: 10000);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Information", style: titleStyle()),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Divider(thickness: 2),
          ),
          Text(
            "Title",
            style: subtitleStyle(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 15.0),
            child: Text(
              mou.title,
              style: titleStyle(),
            ),
          ),
          Text("Description", style: subtitleStyle()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
            child: Text(mou.desc,
                softWrap: true,
                textAlign: TextAlign.center,
                style: subtitleStyle()),
          ),
          Text("Date", style: subtitleStyle()),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Text(
              "${mou.day} ${mou.month} ${mou.year}",
              style: normalStyle(),
            ),
          ),
          Text("Required Amount", style: subtitleStyle()),
          Text("₹ ${mou.amount}", style: normalStyle()),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Divider(thickness: 2),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: ListTile(
              title: Text("file_name.pdf", style: TextStyle(fontSize: 14)),
              subtitle: Text("10.0 MB", style: TextStyle(fontSize: 12)),
              tileColor: kTileClr,
              leading: Icon(Icons.file_present, size: 25),
              trailing: Icon(Icons.file_download_outlined, size: 25),
            ),
          )
        ],
      ),
    );
  }

  TextStyle titleStyle() {
    return const TextStyle(fontWeight: FontWeight.bold, fontSize: 18);
  }

  TextStyle normalStyle() {
    return const TextStyle(fontSize: 14);
  }

  TextStyle subtitleStyle() {
    return const TextStyle(fontSize: 14);
  }
}
