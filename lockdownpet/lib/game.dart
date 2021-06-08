import 'package:flutter/material.dart';
import 'package:lockdownpet/game1.dart';
import 'package:lockdownpet/home.dart';
import 'package:lockdownpet/showerRoom.dart';
import 'main.dart';
import 'monstyle.dart';
import 'game1.dart';
import 'game2.dart';
import 'game3.dart';
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
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[

      RaisedButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new MainMenu(animal: widget.animal,);
        })),
        child: montextavocado('Home', 1, Colors.blue),),


      RaisedButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new Game1(animal: widget.animal,);
        })),
        child: montextavocado('Game1', 1, Colors.blue),),



      RaisedButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new Shower(animal: widget.animal);
        })),
        child: montextavocado('ShowerRoom', 1, Colors.blue)
        
             ),

      RaisedButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new Game3();
        })),
        child: montextavocado('Game3', 1, Colors.blue),),


    
    ]   
  ),
),

    ); 
  }



}