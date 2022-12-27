import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  postData(
      {required String rootCollection,
      required String doc1,
      required dynamic data}) async {
    try {
      await FirebaseFirestore.instance.collection(rootCollection).add(data);
    } catch (e) {
      print(e.toString());
    }
  }
}
