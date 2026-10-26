import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("hafii project"),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[  
            Container(
          color:Colors.yellow,
          width:100,
          height:100,
          margin: EdgeInsets.all(10),
          ),
            Container(
          color:Colors.purple,
          width:100,
          height:100,
          margin: EdgeInsets.all(10),

          ),
            Container(
          color:Colors.red,
          width:100,height:200,
          margin: EdgeInsets.all(10)
          ),

]
         ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[  
            Container(
          color:Colors.yellow,
          width:100,
          height:100,
          margin: EdgeInsets.all(10),
          ),
            Container(
          color:Colors.purple,
          width:100,
          height:100,
          margin: EdgeInsets.all(10),

          ),
            Container(
          color:Colors.red,
          width:100,height:200,
          margin: EdgeInsets.all(10)
          ),

]
         ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[  
            Container(
          color:Colors.yellow,
          width:100,
          height:100,
          margin: EdgeInsets.all(10),
          ),
            Container(
          color:Colors.purple,
          width:100,
          height:100,
          margin: EdgeInsets.all(10),

          ),
            Container(
          color:Colors.red,
          width:100,height:100,
          margin: EdgeInsets.all(10)
          ),

]
         )
          ]
        )
        ),
      );
    
  }
}