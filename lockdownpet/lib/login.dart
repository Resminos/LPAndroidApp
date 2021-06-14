import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lockdownpet/main.dart';
import 'package:lockdownpet/monstyle.dart';
import 'package:lockdownpet/register.dart';
import 'profil.dart';
import 'register.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
        SizedBox(height: 100,),
        montextpixel('Vous avez déja un compte ?', 1, Colors.black),

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


                SizedBox(height: 50),
                RaisedButton(
                    color: Colors.orange[200],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Text('Se connecter'),
                    onPressed: (){
                      auth.signInWithEmailAndPassword(email: _email, password: _password).then((_){

                       Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MyApp()), (route) => false);
                      });

                    }),
                SizedBox(height: 100),

                montextpixel('Vous voulez creer un compte', 1, Colors.black),



                SizedBox(height: 20),
                RaisedButton(
                  color: Colors.orange[200],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Text('Creer un compte'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new RegisterScreen();
         }));

                  },
                )
              ]
        ),
    );
  }
}