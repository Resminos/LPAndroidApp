import 'package:flutter/material.dart';
import 'package:lockdownpet/home.dart';
import 'package:lockdownpet/showerRoom.dart';
import 'main.dart';
import 'monstyle.dart';

import 'animalStats.dart';
import 'showerRoom.dart';

class InvetaireMenu extends StatefulWidget{

Animal animal;




InvetaireMenu({required this.animal});

  @override
  _InvetaireMenuState createState() => new _InvetaireMenuState();



  }

  

class _InvetaireMenuState extends State<InvetaireMenu>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      FlatButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return new MainMenu(animal: widget.animal);
                  })),
                   child: Text('Home')),

      for (int i=0; i<widget.animal.inventaire.length; i++)

    Row(
      children:[

        Image.asset('assets/images/'+widget.animal.inventaire.elementAt(i), width: 100)
      ]
    )
    
    ]   
  ),
),

    ); 
  }



}