import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Text montextpixel( String data, double scale, Color color){
    return new Text(
      data,
      textScaleFactor: scale,
      style: new TextStyle(
        color: color,
        fontSize: 20,
        fontFamily: 'LLPIXEL'

      ),
      

    );

  }


  Text montextavocado( String data, double scale, Color color){
    return new Text(
      data,
      textScaleFactor: scale,
      style: new TextStyle(
        color: color,
        fontSize: 20,
        fontFamily: 'Hello Avocado',

      ),
      

    );
  }