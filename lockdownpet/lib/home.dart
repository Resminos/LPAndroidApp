import 'package:flutter/material.dart';
import 'package:lockdownpet/game1.dart';
import 'main.dart';
import 'monstyle.dart';
import 'game.dart';
import 'displayLife.dart';
import 'animalStats.dart';


class MainMenu extends StatefulWidget{

Animal animal;




MainMenu({required this.animal});


  @override
  _MainMenuState createState() => new _MainMenuState();
  



  }

  

class _MainMenuState extends State<MainMenu>{
    

  @override
  Widget build(BuildContext context) {

    widget.animal.lifeValueSet(5);
    // TODO: implement build
    return Scaffold(


  body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: <Widget>[
      
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         lifeDisplay(widget.animal.lifeValueGet(), 40),
         montextpixel(widget.animal.goldsGet().toString(), 1, Colors.black),
       ],

      ),



      
      widget.animal.animalDisplay(widget.animal.typeGet()),

      SizedBox(
        height: 50,
      ),
      montextpixel(widget.animal.nameGet(), 2, Colors.orange),




      Container(
        
        
        height: 50,
        decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), 
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors : [
            Colors.amber,
            Color.fromRGBO(249, 133, 43,1)
            
          ]
        )

        ),
        
        child:
        
              Row(        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          

        

          IconButton(onPressed: 
        ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new GameMenu(animal: widget.animal,);
        })),
         icon: new Icon(Icons.gamepad))


        ],),

        
      ),
      

    ],
  ),


    )); 
  }
    



}

