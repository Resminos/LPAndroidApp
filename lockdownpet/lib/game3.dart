import 'package:flutter/material.dart';

import 'monstyle.dart';

class Game3 extends StatefulWidget{



  @override
  _Game3State createState() => new _Game3State();



  }

  

class _Game3State extends State<Game3>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Game3'),


      ),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.network('https://i.pinimg.com/originals/5f/82/6d/5f826dcd39712916a1f3324cfeac717d.gif', width: 300,)
    ],
  ),
),

    ); 
  }



}