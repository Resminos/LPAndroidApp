
import 'package:flutter/material.dart';
import 'package:lockdownpet/animalStats.dart';
import 'package:lockdownpet/app.dart';
import 'package:lockdownpet/home.dart';
import 'monstyle.dart';
import 'animalStats.dart';
import 'package:firebase_core/firebase_core.dart';
import 'database.dart';
 


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(App());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'LLPIXEL',
      ),
      home: MyHomePage(title: 'LockDown Pet'),
      debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
 
  String animalName= '';
  bool switchchoice =false;
  int animalSelection=1;
  Animal animal = new Animal();
  

  @override
  Widget build(BuildContext context) {
    animal.typeSet(animalSelection);
    animal.lifeValueSet(3);
    return Scaffold(
      
      
      body: Center(
        child: Column(
        
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[



              montextpixel('Choisissez un animal', 2, Colors.blue),
              SizedBox(height: 50),
              montextpixel('Chien    Chat', 1, Colors.black),
              Switch(value: switchchoice, onChanged: (bool b){
                setState(() {
                  if (b==false){
                    animalSelection=1;
                    switchchoice=b;
                    animal.typeSet(animalSelection);
                  }
                  else if(b==true) {
                    animalSelection=2;
                    switchchoice=b;
                    animal.typeSet(animalSelection);

                  }
                });

              }
              )  ,

            TextField(
              
              onChanged: (String animalNameType){
                setState(() {
                 animalName=animalNameType;
                 animal.nameSet(animalName);
                  
                });
                
              },

              onSubmitted: (String animalNameType){
                setState(() {
                 animalName=animalNameType;
                 animal.nameSet(animalName);

                });


              },
              

              decoration: InputDecoration(
                labelText: 'Comment voulez vous appeler votre animal'
              
              ),
              ),

            SizedBox(height: 50),



             RaisedButton(
               
                onPressed:()=> Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MainMenu(animal: animal,)), (route) => false),
                color: Colors.orange[200],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                 child:
                
                  Text('Valider',style: new TextStyle(color:Colors.black, fontSize: 20),
                  ),
                  
             
                ),

              ],
        ),
      ),
      
    );
  }






}



