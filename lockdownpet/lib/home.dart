import 'package:flutter/material.dart';
import 'package:lockdownpet/game1.dart';
import 'package:lockdownpet/podometer.dart';
import 'package:lockdownpet/shop.dart';
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




        Row(        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          

        

          FlatButton(
            height: 85,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)),

            onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new GameMenu(animal: widget.animal,);
         })),
         color: Colors.blue,
        child:
        
        Image.asset('assets/images/game-console.png', width: 50,) ,
         ),


         FlatButton(
          height: 85,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)),
           onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new PodometreMenu();
         })),
         color: Colors.blue,
        child:
        Image.asset('assets/images/dog-collar.png', width: 50,) ,
         ),


         FlatButton(
           height: 85,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)),
          onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new ShopMenu(animal: widget.animal);
         })),
         color: Colors.blue,
        child:
        Image.asset('assets/images/trolley.png', width: 50,) ,
         ),



        ],),

      

    ],
  ),


    ));
    _displayCoins(int coins){

      Image.asset('assets/images/coins.png');
      Text('$coins');


    }
  }


    



}

