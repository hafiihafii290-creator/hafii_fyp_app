import 'package:flutter/material.dart';
void main(){runApp(const MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
Widget build (BuildContext context){
return MaterialApp(

  home:Scaffold(
    appBar:AppBar(
      title:Text ("my app"),
      backgroundColor:Colors.red,
    ), 
    body:Column(
      children: [ 
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height:80,
          width:80,
          color:Colors.black,
          margin:EdgeInsets.all(10)
        ),
        Container(
          margin:EdgeInsets.all(10),
          height:80,
          width:80,
          color:Colors.red,
        ),
        Container(
          height:80,
          width:80,
          margin:EdgeInsets.all(10),
          color:Colors.green,
        ),
      
      ],
    ),
      
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height:80,
          width:80,
          color:Colors.black,
          margin:EdgeInsets.all(10)
        ),
        Container(
          margin:EdgeInsets.all(10),
          height:80,
          width:80,
          color:Colors.red,
        ),
        Container(
          height:80,
          width:80,
          margin:EdgeInsets.all(10),
          color:Colors.green,
        ),
      
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height:80,
          width:80,
          color:Colors.black,
          margin:EdgeInsets.all(10)
        ),
        Container(
          margin:EdgeInsets.all(10),
          height:80,
          width:80,
          color:Colors.red,
        ),
        Container(
          height:80,
          width:80,
          margin:EdgeInsets.all(10),
          color:Colors.green,
        ),
      
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height:80,
          width:80,
          color:Colors.black,
          margin:EdgeInsets.all(10)
        ),
        Container(
          margin:EdgeInsets.all(10),
          height:80,
          width:80,
          color:Colors.red,
        ),
        Container(
          height:80,
          width:80,
          margin:EdgeInsets.all(10),
          color:Colors.green,
        ),
      
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height:80,
          width:80,
          color:Colors.black,
          margin:EdgeInsets.all(10)
        ),
        Container(
          margin:EdgeInsets.all(10),
          height:80,
          width:80,
          color:Colors.red,
        ),
        Container(
          height:80,
          width:80,
          margin:EdgeInsets.all(10),
          color:Colors.green,
        ),
      
      ],
    ),
    
      ],
    ),

    
    ),
);
}
}