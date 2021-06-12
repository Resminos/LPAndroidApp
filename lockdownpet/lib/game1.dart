import 'dart:async';

import 'package:flutter/material.dart';

import 'monstyle.dart';
import 'home.dart';
import 'animalStats.dart';

class Game1 extends StatefulWidget{

Animal animal;




Game1({required this.animal});

  @override
  _Game1State createState() => new _Game1State();



  }

  

class _Game1State extends State<Game1>{

  int _temps=10;
  late Timer _timer;
  int _score=0;
  bool incre=true;
  bool _end=false;
  bool _buttonPushed=false;

  void _startTimer(){


      _timer= Timer.periodic(Duration(seconds: 1), (timer) { 

      setState(() {
        if(_temps>0){
          _temps--;
          incre=false;
        }else{
          _timer.cancel();
          incre=true;
          _end=true;     
          widget.animal.goldsSet(widget.animal.goldsGet()+_score);
          if(widget.animal.lifeValue<5){
            widget.animal.lifeValueSet(widget.animal.lifeValueGet()+1);
          }
          showDialog(context: context, barrierDismissible: false, builder: (BuildContext context){
          return new SimpleDialog(
            
          
            title: new Text('Bravo ! '),
            contentPadding: EdgeInsets.all(15.0),
            children: <Widget>[
              Row(

                children: [
                  new Text('Tu as fini avec un score de $_score'+' ! Tu remporte $_score '),
                  Image.asset('assets/images/coin.png', height: 20,),
                ],             


              ),
              
              new RaisedButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new MainMenu(animal: widget.animal,);
         })),

              color: Colors.blue,
              textColor: Colors.pink,
              child: Text('Retourner au menu'),

              )
            ],
            

          );
      });


        }
      });
      });

     


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      

          

body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    

    children:
     <Widget>[
       FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new MainMenu(animal: widget.animal,);
        })),
        color: couleurBouton(_buttonPushed),
        child: montextavocado('Home', 1, couleurTexte(_buttonPushed) )),
      
        (_temps==10)? montextpixel('READY ?', 3, Colors.amber) : montextpixel('CLIQUEZ !', 3, Colors.amber),
        montextpixel('$_temps', 2, Colors.black),
        montextpixel('$_score', 1, Colors.amber),


      
      FlatButton(onPressed:(){ _startTimer();
      
      _buttonPushed=true;}, 
      
      
      child: Text('Lancer le timer !' ),
      color: couleurBouton(_buttonPushed),
      textColor: couleurTexte(_buttonPushed),),

      


      FlatButton(onPressed: () => (incre)? null : _incrementScore(),
      
      child: Text(''),
      height: 400,
      minWidth: 400,
      )
,

    ],
  ),
),





    );

    
  }
  Future<Null> _dialog(String title, String description, String txtbout) async{


      return showDialog(context: context, barrierDismissible: true, builder: (BuildContext context){
          return new SimpleDialog(
            title: new Text(title),
            contentPadding: EdgeInsets.all(10.0),
            children: <Widget>[
              new Text(description),
              new RaisedButton(onPressed: (){
                _startTimer();                
              },

              color: Colors.blue,
              textColor: Colors.pink,
              child: Text(txtbout),

              )
            ],

          );
      });


      

    }
    void _incrementScore(){
        setState(() {
          _score++;
        });
}

Color couleurBouton(bool buttonState){

  if (buttonState) {
    return Colors.transparent;
    
  }
  else{
    return Colors.orange;
  }

}
Color couleurTexte(bool buttonState){

  if (buttonState) {
    return Colors.transparent;
    
  }
  else{
    return Colors.black;
  }

}






}