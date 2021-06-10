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
         Row(
           children:[

          Image.asset('assets/images/coin.png', width: 20,),
         montextpixel(widget.animal.goldsGet().toString(), 1.5, Colors.black),
           ]
         )
         
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
            Colors.pink,
            Color.fromRGBO(252, 185, 249 , 1),
            
          ]
        )

        ),
        
        child:
        
              Row(        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          

        

          FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new GameMenu(animal: widget.animal,);
         })),
         color: Colors.transparent,
        child:
        Image.asset('assets/images/game-console.png') ,
         ),


         FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new GameMenu(animal: widget.animal,);
         })),
         color: Colors.transparent,
        child:
        Image.asset('assets/images/dog-collar.png') ,
         ),


         FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new GameMenu(animal: widget.animal,);
         })),
         color: Colors.transparent,
        child:
        Image.asset('assets/images/trolley.png') ,
         ),



        ],),

        
      ),
      

    ],
  ),


    ));
    _displayCoins(int coins){

      Image.asset('assets/images/coins.png');
      Text('$coins');


    }
  }


    



}

