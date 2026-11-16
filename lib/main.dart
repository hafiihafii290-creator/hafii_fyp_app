import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({super.key});
  Rx<Color>color=Colors.blue.obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:const Text("bs")
        ),
        body:Obx(
          ()=> Container(
            color:color.value,
            child:Column (
              children: [
                Text('test'),
                ElevatedButton(
                  onPressed: () {
                    color.value=color.value==Colors.blue?Colors.red:Colors.blue;
                    // Button press logic
                  },
                  child: Text('login'),
                  
                )
              ],
          )
          
                ),
        )
      
    ),
    );
  }
}