import 'package:flutter/material.dart';


class Item{
  String name='';
  int type=0;
  int price=0;





String nameGet(){

  return this.name;

}
String nameSet(String data){

  return this.name =data;

}
int typeGet(){

  return this.type;


}

int priceGet(){

  return this.price;


}

int typeSet(int data){

  return this.type=data;


}

int priceSet(int data){

  return this.price=data;


}

  


displayItems(List<Item> shop, List<Item> inventaire){


for(int i=0; i<shop.length; i++){
  if (!inventaire.contains(shop.elementAt(i))){

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(shop.elementAt(i).name, width: double.infinity/10,),
        Text(shop.elementAt(i).priceGet().toString()),
        Image.asset('assets/images/coin.png', width: 10),



      ],
    );


  }


}



}

}








