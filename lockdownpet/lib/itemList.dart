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

Item showerhead1= new Item();
showerhead1.name='shower-head.png';
showerhead1.price=200;

this.itemList.add(soap1);
this.itemList.add(showerhead1);


return this.itemList;

}

}





