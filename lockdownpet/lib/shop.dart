import 'package:flutter/material.dart';
import 'package:lockdownpet/home.dart';
import 'package:lockdownpet/showerRoom.dart';
import 'main.dart';
import 'monstyle.dart';
import 'animalStats.dart';
import 'showerRoom.dart';

class ShopMenu extends StatefulWidget{

Animal animal;
List<String> shopStock = ['soap.png', 'shower-head.png', 'trolley.png', 'soap (2).png'];





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
    
    return new Scaffold(
      
body: Center(
  child: SingleChildScrollView(
  
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
        if (!widget.animal.inventaire.contains(widget.shopStock.elementAt(0)))
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(onPressed: () {widget.animal.inventaire.add(widget.shopStock.elementAt(0));
            
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new MainMenu(animal: widget.animal);
         }));
            
            }, child: Image.asset('assets/images/'+widget.shopStock.elementAt(0), width: 100,)),
            Row(
              children: [

              Image.asset('assets/images/coin.png', width: 40,),
              montextpixel('100', 2, Colors.black)
              ],

              
            ),
            
            
          ],


        ),
        if (!widget.animal.inventaire.contains(widget.shopStock.elementAt(1)))

                Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(onPressed: () {
              
              if(widget.animal.goldsGet()>=100){ 
                
                widget.animal.inventaire.add(widget.shopStock.elementAt(1));
                widget.animal.goldsSet(widget.animal.goldsGet()-100);
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return new MainMenu(animal: widget.animal);
                }));

              }
            
          
            
            }, child: Image.asset('assets/images/'+widget.shopStock.elementAt(1), width: 100,)),
            Row(
              children: [

              Image.asset('assets/images/coin.png', width: 40,),
              montextpixel('100', 2, Colors.black)
              ],

              
            ),
            
            
          ],


        ),
        if (!widget.animal.inventaire.contains(widget.shopStock.elementAt(2)))

                Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(onPressed: () {widget.animal.inventaire.add(widget.shopStock.elementAt(2));
            
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new MainMenu(animal: widget.animal);
         }));
            
            }, child: Image.asset('assets/images/'+widget.shopStock.elementAt(2), width: 100,)),
            Row(
              children: [

              Image.asset('assets/images/coin.png', width: 40,),
              montextpixel('100', 2, Colors.black)
              ],

              
            ),
            
            
          ],


        ),
        if (!widget.animal.inventaire.contains(widget.shopStock.elementAt(3)))

                Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(onPressed: () {widget.animal.inventaire.add(widget.shopStock.elementAt(3));
            
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new MainMenu(animal: widget.animal);
         }));
            
            }, child: Image.asset('assets/images/'+widget.shopStock.elementAt(3), width: 100,)),
            Row(
              children: [

              Image.asset('assets/images/coin.png', width: 40,),
              montextpixel('100', 2, Colors.black)
              ],

              
            ),
            
            
          ],


        ),

        if (!widget.animal.inventaire.contains(widget.shopStock.elementAt(3)))

                Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(onPressed: () {widget.animal.inventaire.add(widget.shopStock.elementAt(3));
            
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new MainMenu(animal: widget.animal);
         }));
            
            }, child: Image.asset('assets/images/'+widget.shopStock.elementAt(3), width: 100,)),
            Row(
              children: [

              Image.asset('assets/images/coin.png', width: 40,),
              montextpixel('100', 2, Colors.black)
              ],

              
            ),
            
            
          ],


        ),

        if (!widget.animal.inventaire.contains(widget.shopStock.elementAt(3)))

                Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(onPressed: () {widget.animal.inventaire.add(widget.shopStock.elementAt(3));
            
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new MainMenu(animal: widget.animal);
         }));
            
            }, child: Image.asset('assets/images/'+widget.shopStock.elementAt(3), width: 100,)),
            Row(
              children: [

              Image.asset('assets/images/coin.png', width: 40,),
              montextpixel('100', 2, Colors.black)
              ],

              
            ),
            
            
          ],


        ),

        if (!widget.animal.inventaire.contains(widget.shopStock.elementAt(3)))

                Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(onPressed: () {widget.animal.inventaire.add(widget.shopStock.elementAt(3));
            
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return new MainMenu(animal: widget.animal);
         }));
            
            }, child: Image.asset('assets/images/'+widget.shopStock.elementAt(3), width: 100,)),
            Row(
              children: [

              Image.asset('assets/images/coin.png', width: 40,),
              montextpixel('100', 2, Colors.black)
              ],

              
            ),
            
            
          ],


        ),


             

          ],

        )
        
      


    

  ),
),

);
     
  }



}