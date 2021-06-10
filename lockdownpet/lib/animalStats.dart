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
   return  'assets/images/Shiba.gif';
    
  }
  else if (animalID==2) { //chat
     return 'assets/images/cat.gif';
    
  }
  return 'assets/images/Shiba_Running.gif';

}




Image animalDisplay (int animalInt){
  return new Image.asset(animalLink(animalInt), );
}
  




}





