import 'package:flutter/material.dart';

String lifeLink(int points){

  if (points==5) {// full
   return  'https://i.ibb.co/VM3Cgsj/BV5.png';
    
  }
  else if (points==4) { //4
     return 'https://i.ibb.co/s2dxBp5/BV4.png';
    
  }
  else if (points==3) { //3
     return 'https://i.ibb.co/x2mhrDL/BV3.png';
    
  }
  else if (points==2) { //2
     return 'https://i.ibb.co/Jv7ZrfQ/BV2.png';
    
  }
  else if (points==1) { //1
     return 'https://i.ibb.co/9rdkDhH/BV1.png';
    
  }
  else {
    return 'https://moodle.isep.fr/moodle/pluginfile.php/5747/user/icon/fordson/f2?rev=399762 ';
  }
}




Image lifeDisplay (int lifeInt, double l){
  return new Image.network(lifeLink(lifeInt),height: l , );
}

