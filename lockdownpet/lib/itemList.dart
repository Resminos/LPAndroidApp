import 'package:flutter/material.dart';
import 'package:lockdownpet/items.dart';
import 'items.dart';



class ItemList{
  

List<Item> itemList= [];


List<Item> getList(){

  return this.itemList;
}



List<Item> itemInit(){

Item soap1= new Item();
soap1.name='soap.png';
soap1.price=100;

Item soap2= new Item();
soap2.name='soap (1).png';
soap2.price=100;

Item soap3= new Item();
soap3.name='soap (2).png';
soap3.price=100;

Item soap4= new Item();
soap4.name='soap (3).png';
soap4.price=100;

Item soap5= new Item();
soap5.name='soap (4).png';
soap5.price=100;

Item soap6= new Item();
soap6.name='soap (5).png';
soap6.price=100;

Item shower1= new Item();
shower1.name='shower-head.png';
shower1.price=200;

Item shower2= new Item();
shower2.name='shower.png';
shower2.price=200;

Item shower3= new Item();
shower3.name='shower (1).png';
shower3.price=200;

Item shower4= new Item();
shower4.name='shower (2).png';
shower4.price=200;

this.itemList.add(soap1);
this.itemList.add(soap2);
this.itemList.add(soap3);
this.itemList.add(soap4);
this.itemList.add(soap5);
this.itemList.add(shower1);
this.itemList.add(shower2);
this.itemList.add(shower3);
this.itemList.add(shower4);


return this.itemList;

}

}





