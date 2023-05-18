import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';



class DatabaseServices{
  final String uid;
  DatabaseServices(this.uid);

  final CollectionReference emotion=FirebaseFirestore.instance.collection("Emotion");
/*Stream<DocumentSnapshot> get userData{
  //return emotion.document(uid).snapshots();
}*/
}