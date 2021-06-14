import 'package:flutter/material.dart';
import 'package:lockdownpet/game1.dart';
import 'package:lockdownpet/home.dart';
import 'package:lockdownpet/profil.dart';
import 'package:lockdownpet/showerRoom.dart';
import 'main.dart';
import 'monstyle.dart';
import 'game1.dart';

import 'animalStats.dart';
import 'showerRoom.dart';

class GameMenu extends StatefulWidget{

Animal animal;




GameMenu({required this.animal});

  @override
  _GameMenuState createState() => new _GameMenuState();



  }

  

class _GameMenuState extends State<GameMenu>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[

      Row(
        children:[
      RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)),
        onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new MainMenu(animal: widget.animal,);
        })),
        child: montextpixel('Home', 1, Colors.black),),

        ]
      ),




      RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)),
        onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new Game1(animal: widget.animal,);
        })),
        child: montextpixel('JEU 1 ', 2, Colors.amber),),



      RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)),
        onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new Shower(animal: widget.animal);
        })),
        child: montextpixel('Shower Room', 2, Colors.amber)
        
             ),


             RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)),
        onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new Profil();
        })),
        child: montextpixel('Profile', 2, Colors.amber)
        
             ),

             SizedBox(
               height: 1
             )



    
    ]   
  ),
),

    ); 
  }



}