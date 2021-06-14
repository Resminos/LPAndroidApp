import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class Profil extends StatelessWidget {

  final FirebaseAuth auth = FirebaseAuth.instance;
  void inputData()

  {

  final User? user = auth.currentUser;
  final uid = user!.uid;

  }
  final CollectionReference collectionReference = FirebaseFirestore.instance.collection("UserData");




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body: Center(child: FlatButton(
        color: Colors.orange[200],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text('Logout',),onPressed: (){

        auth.signOut();
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
      },),),

    );
  }
}

//Future getCurrentUserData() async{
//
//
//  try {
//    DocumentSnapshot ds = await user.doc(uid).get();
//    String  firstname = ds.get('FirstName');
//    String lastname = ds.get('LastName');
//    return [firstname,lastname];
//  }catch(e){
//    print(e.toString());
//    return null;
//  }
//}
