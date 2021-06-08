import 'package:flutter/material.dart';


class Animal{
  String name='';
  int type=0;
  int lifeValue=0;
  int golds=0;

  String nameGet(){

  return this.name;


}
String nameSet(String data){

  return this.name =data;


}
int typeGet(){

  return this.type;


}
int lifeValueGet(){

  return this.lifeValue;


}
int goldsGet(){

  return this.golds;


}

int typeSet(int data){

  return this.type=data;


}
int lifeValueSet(int data){

  return this.lifeValue=data;


}
int goldsSet(int data){

  return this.golds=data;


}


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
  


}



