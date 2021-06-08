import 'package:flutter/material.dart';

import 'monstyle.dart';

class Game2 extends StatefulWidget{



  @override
  _Game2State createState() => new _Game2State();



  }

  

class _Game2State extends State<Game2>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Game2'),


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