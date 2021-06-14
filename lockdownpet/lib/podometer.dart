import 'package:flutter/material.dart';
import 'package:lockdownpet/home.dart';
import 'package:lockdownpet/showerRoom.dart';
import 'main.dart';
import 'monstyle.dart';

import 'animalStats.dart';
import 'showerRoom.dart';

class PodometreMenu extends StatefulWidget{

  @override
  _PodometreMenuState createState() => new _PodometreMenuState();



  }

  

class _PodometreMenuState extends State<PodometreMenu>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[

      montextpixel('PODOMETRE ( EN COUR )', 2, Colors.blue) 

    
    ]   
  ),
),

    ); 
  }



}