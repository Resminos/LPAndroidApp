import 'dart:async';

import 'package:flutter/material.dart';

import 'monstyle.dart';
import 'home.dart';
import 'animalStats.dart';

class Shower extends StatefulWidget{

Animal animal;




Shower({required this.animal});



  @override
  _ShowerState createState() => new _ShowerState();



  }

  

class _ShowerState extends State<Shower>{

  

     




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    

    return Scaffold(


  body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: <Widget>[



      montextpixel('SHOWER TIME !', 1, Colors.amber),




    ]
  ),
  ),
    );



    
  }

  }

    






