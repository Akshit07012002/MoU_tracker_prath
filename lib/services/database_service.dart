import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseService {
  final CollectionReference mou = FirebaseFirestore.instance.collection('mou');
  final CollectionReference activity =
      FirebaseFirestore.instance.collection('activity');

  Future updateActivityData(String name, String desc, bool status) async {
    return await activity
        .doc()
        .set({'name': name, 'desc': desc, 'status': status});
  }

  Future updateMouData(
      String name, String desc, int id, DateTime dateTime) async {
    return await mou
        .doc()
        .set({'name': name, 'desc': desc, 'id': id, 'Date': dateTime});
  }
}
