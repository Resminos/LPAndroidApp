import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


String animalLink(int animalID){

  if (animalID==1) { //chien
   return  'https://i.pinimg.com/originals/5f/82/6d/5f826dcd39712916a1f3324cfeac717d.gif';
    
  }
  else if (animalID==2) { //chat
     return 'https://i.ibb.co/NZ9Hh0K/ezgif-com-gif-maker.gif';
    
  }
  return 'https://thumbs.gfycat.com/BackEcstaticAuklet-max-1mb.gif';

}




Image animalDisplay (int animalInt){
  return new Image.network(animalLink(animalInt), );
}