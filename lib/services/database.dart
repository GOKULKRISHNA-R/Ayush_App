import 'package:cloud_firestore/cloud_firestore.dart';

class DBService {

  final String uid ;
  DBService({ required this.uid });

  final CollectionReference userCollection = FirebaseFirestore.instance.collection('Gk');

  Future updateUserData(String UserName , String PhoneNumber ) async {
    return await userCollection.doc(uid).set({
      'UserName': UserName,
      'PhoneNumber': PhoneNumber,
    });
  }
}