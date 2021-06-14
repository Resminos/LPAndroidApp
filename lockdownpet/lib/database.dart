import 'package:cloud_firestore/cloud_firestore.dart';
class DatabaseService {

  final String uid;

  DatabaseService({required this.uid});

  final userCollection = FirebaseFirestore.instance.collection("userData");
  Future updateUserInfo(String email) async{

    return await userCollection.doc(uid).set({
      'email' : email,
    });
  }

  Future getCurrentUserData() async{
    try {
      DocumentSnapshot ds = await userCollection.doc(uid).get();
      String  email = ds.get('email');

      return email;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

}