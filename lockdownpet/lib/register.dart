import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lockdownpet/login.dart';
import 'package:lockdownpet/main.dart';
import 'package:lockdownpet/monstyle.dart';
import 'profil.dart';
class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
        SizedBox(height: 100,),
                montextpixel('Vous voulez creer un compte', 1, Colors.black),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Email'
              ),
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password'),
              onChanged: (value) {
                setState(() {
                  _password = value.trim();
                });
              },
            ),

          ),



                SizedBox(height: 100),


                SizedBox(height: 20),
                RaisedButton(
                  color: Colors.orange[200],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Text('Creer un compte'),
                  onPressed: (){
                    auth.createUserWithEmailAndPassword(email: _email, password: _password).then((value){
                      FirebaseFirestore.instance.collection('UserData').doc(value.user!.uid).set({"email": value.user!.email});
                     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
                    });

                  },
                )
              ]
        ),
    );
  }
}