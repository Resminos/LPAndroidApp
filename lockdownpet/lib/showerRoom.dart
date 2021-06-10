import 'dart:async';

import 'package:flutter/material.dart';

import 'monstyle.dart';
import 'home.dart';
import 'animalStats.dart';
import 'dart:math';

class Shower extends StatefulWidget{

Animal animal;




Shower({required this.animal});



  @override
  _ShowerState createState() => new _ShowerState();



  }

  

class _ShowerState extends State<Shower>{
  int _temps=20;
  late Timer _timer;
  bool _end=false;
  bool _waterPressed=false;
  bool _soapPressed=false;
  bool _brushPressed=false;
  bool _buttonPushed=false;
  int randomWater=new Random().nextInt(15)+5;
  int randomSoap=new Random().nextInt(15)+5;
  int randomBrush=new Random().nextInt(15)+5;
  String taskSucces='Shower Time !';
  Color taskColor= Colors.amber;
  bool timerIsActive = false;
  int score =0;

  void _startTimer(){


      _timer= Timer.periodic(Duration(seconds: 1), (timer) { 

      setState(() {
        if(_temps>0){
          _temps--;
          timerIsActive=true;
        }else{
          _timer.cancel();
          _end=true;
          timerIsActive=false;     

        }
      });
      });

     


  }

  void initializeRadom(){

  }

  

     




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

            FlatButton(onPressed: ()=> (_buttonPushed==false)? Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new MainMenu(animal: widget.animal,);
        })) : null,
        color: couleurBouton(_buttonPushed),
        child: montextavocado('Home', 1, couleurTexte(_buttonPushed) )),
          Row(
          children: [
            Image.asset('assets/images/coin.png', width: 20,),
            montextpixel(widget.animal.goldsGet().toString(), 1, Colors.black),
          ],


          )
          


          ],
        ),
      montextpixel(taskSucces, 2, taskColor),
      montextpixel('$_temps', 3, Colors.black),

      Stack(
        
        children:[
          Positioned(
            
            
            child:widget.animal.animalDisplay(widget.animal.typeGet()))
        ,
        Positioned(
          right: -100,
          child:
        (_waterPressed==true && _brushPressed==false)? Image.asset('assets/images/water3.gif',): Image.asset('assets/images/1x1.png',)
        )
          ,

        Positioned(
          right:100,
          bottom: 15,
          child:
        (_soapPressed==true && _brushPressed==false)? Image.asset('assets/images/soapgif.gif',): Image.asset('assets/images/1x1.png',)
        )
          ,
          Positioned(
          right:70,
          bottom: 00,
          child:
        (_brushPressed)? Image.asset('assets/images/starts.gif', width: 100,): Image.asset('assets/images/1x1.png',)
        ),
        Positioned(
          right:200,
          bottom: 50,
          child:
        (_brushPressed)? Image.asset('assets/images/starts.gif', width: 100,): Image.asset('assets/images/1x1.png',)
        )
          
        ]
      ),


      Container(
        height: 100,
        child: 
            
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [


              FlatButton(onPressed: () {

                
              
              if(_waterPressed==false && timerIsActive==false) { 
                setState(() {
                  taskSucces='BE READY';
                taskColor=Colors.amber;  
                });
                        
              _temps=21;
              _startTimer();}
              else{
                if(_temps>randomWater-2 && _temps<randomWater+2){
                  setState(() {
                    taskColor=Colors.green;
                  taskSucces='PERFECT';
                  _timer.cancel();
                  timerIsActive=false;
                  score=score+1;
                  if (_waterPressed==true && _brushPressed==true && _soapPressed==true){
                  finDeJeu();
                }
                  });
                  
                }
                else{
                  setState(() {
                    taskColor=Colors.red;
                  taskSucces='FAIL';
                  _timer.cancel();
                   timerIsActive=false;
                   if (_waterPressed==true && _brushPressed==true && _soapPressed==true){
                  finDeJeu();
                }

                  });
                  
                }

              }
              _waterPressed=true;
              _buttonPushed=true;
              
            }, child: Image.asset('assets/images/shower-head.png', width: 70)),

            Positioned(
              
              child: 
              
              Text('Arretez à '+randomWater.toString()+' sec'),
            )

              ],
            ), 

            Stack(

              children:[
                FlatButton(onPressed: () {
                  
              
              if(_soapPressed==false && timerIsActive==false) {   
                setState(() {
                  taskSucces='BE READY';
                taskColor=Colors.amber;  

                });          
              _temps=21;
              _startTimer();}
              else{
                if(_temps>randomSoap-2 &&_temps<randomSoap+2){
                  setState(() {
                    taskColor=Colors.green;
                  taskSucces='PERFECT';
                  _timer.cancel();
                                    timerIsActive=false;
                                    score=score+1;
                                    if (_waterPressed==true && _brushPressed==true && _soapPressed==true){
                  finDeJeu();
                } 

                  });
                  
                }
                else{
                  setState(() {
                    taskColor=Colors.red;
                  taskSucces='FAIL';
                  _timer.cancel();
                                    timerIsActive=false;
                                    if (_waterPressed==true && _brushPressed==true && _soapPressed==true){
                  finDeJeu();
                } 

                  });
                  
                }

              }
              _soapPressed=true; 
              _buttonPushed=true;
              
            }, child: Image.asset('assets/images/soap.png', width: 70)),

            Positioned(
              bottom:-15,
              
              child: 
              Text('Arretez à '+randomSoap.toString()+' sec'),
            )


              ]
            ),
           

            Stack(

              children:[

            FlatButton(onPressed: () {
                
                
              if(_brushPressed==false && timerIsActive==false) {    
                setState(() {
                  taskSucces='BE READY';
                taskColor=Colors.amber;  
                });        
              _temps=21;
              _startTimer();}
              else{
                if(_temps>randomBrush-2 &&_temps<randomBrush+2){
                  setState(() {
                    taskColor=Colors.green;
                  taskSucces='PERFECT';
                  _timer.cancel();
                                    timerIsActive=false;
                                    score=score+1;
                                    if (_waterPressed==true && _brushPressed==true && _soapPressed==true){
                  finDeJeu();
                }

                  });
                  
                }
                else{
                  setState(() {
                    taskColor=Colors.red;
                  taskSucces='FAIL';
                  _timer.cancel();
                                    timerIsActive=false;
                                    if (_waterPressed==true && _brushPressed==true && _soapPressed==true){
                  finDeJeu();
                }

                  });
                  
                }
              }
              _brushPressed=true; 
              _buttonPushed=true;
              
            }, child: Image.asset('assets/images/hair-brush.png', width: 70,)),

            Positioned(
              child: 
              
              
              Text('Arreter à '+randomBrush.toString()+' sec'),
            )
              ]
            )

            


          ],
          


        ),
        

        
      ),




    ]
  ),
  ),
    );



    
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
void finDeJeu(){

          showDialog(context: context, barrierDismissible: false, builder: (BuildContext context){
          return new SimpleDialog(
            
          
            title: new Text('Bravo ! '),
            contentPadding: EdgeInsets.all(15.0),
            children: <Widget>[
              Row(

                children: [
                  new Text('Tu as fini avec un score de '+'$score'+' ! Tu remportes '+ (score*20).toString()),
                  Image.asset('assets/images/coin.png', height: 20,),
                ],             


              ),
              
              new RaisedButton(onPressed: (){

                widget.animal.goldsSet(widget.animal.goldsGet()+score*20);
                if(score>1){
                widget.animal.lifeValueSet(widget.animal.lifeValueGet()+1);
                }
                
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new MainMenu(animal: widget.animal,); },));


              },

              color: Colors.blue,
              textColor: Colors.pink,
              child: Text('Retourner au menu'),

              )
            ],
            

          );
      });
}


  }

    






