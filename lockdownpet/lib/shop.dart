import 'package:flutter/material.dart';
import 'package:lockdownpet/home.dart';
import 'package:lockdownpet/showerRoom.dart';
import 'main.dart';
import 'monstyle.dart';
import 'animalStats.dart';
import 'showerRoom.dart';
import 'itemList.dart';
import 'inventaire.dart';

class ShopMenu extends StatefulWidget{

Animal animal;
List<String> shopStock = ['soap.png', 'shower-head.png', 'trolley.png', 'soap (2).png'];
ItemList itemList = new ItemList();



ShopMenu({required this.animal});

  @override
  _ShopMenuState createState() => new _ShopMenuState();
  


  }


class _ShopMenuState extends State<ShopMenu>{
  int test=6.8~/2;
  int z=0;
  
 
  
  
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    List<int> number =[1,2,3,4,5];
    widget.itemList.itemInit();
     int test=0;
    return new Scaffold(
body: Center(
  child: SingleChildScrollView(
  
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[

      Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    FlatButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return new MainMenu(animal: widget.animal);
                  })),
                   child: Text('Home')),

                   FlatButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return new InvetaireMenu(animal: widget.animal);
                  })),
                   child: Text('Inventaire')),

                  ],
                ), 

     for (int i=0; i<widget.itemList.getList().length; i++) 
    if (!widget.animal.inventaire.contains(widget.itemList.getList().elementAt(i).nameGet()))

      Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
              FlatButton(onPressed: () {
                
                if(widget.animal.goldsGet()>=widget.itemList.getList().elementAt(i).priceGet()){
                  widget.animal.goldsSet(widget.animal.goldsGet()-widget.itemList.getList().elementAt(i).priceGet());
                  widget.animal.inventaire.add(widget.itemList.getList().elementAt(i).nameGet());
                
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return new MainMenu(animal: widget.animal);
                }));



              }},
              
               child: Image.asset('assets/images/'+widget.itemList.getList().elementAt(i).nameGet(), width: 100,)),

               Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:[
                       montextpixel(widget.itemList.getList().elementAt(i).priceGet().toString(), 2, Colors.black),
                     Image.asset('assets/images/coin.png', width: 20,),
                     

                     ]

               )
                      ],
      ),
      



             

          ],

        )
        
      


    

  ),
),

);
     
  }



}