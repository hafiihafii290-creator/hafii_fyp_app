import"package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  RxInt _counter = 1.obs;
  final box = GetStorage();
  @override
  void initState() {
    super.initState();
    _counter.value = box.read('Counter') ?? 0;
    print("Counter value: ${_counter.value}");
  }


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:const Text("whatsapp"),
          backgroundColor:Colors.green,
        ),
        body:Obx(
          ()=>Center(
            child:Column(
              children: [
                Text("Counter: $_counter"),
                
                  
            
              ElevatedButton(
                onPressed:(){
                  
                    _counter.value--;
                    box.write('Counter.value', _counter.value);
                  
                  },

                  
                
                child:Icon(Icons.remove),
              ),
              ],
            ),
          ),
        ),
          
        
        floatingActionButton:FloatingActionButton(
          onPressed:(){
            
              box.write('Counter.value', _counter.value);
              _counter.value++;
            
          },
          child:const Icon(Icons.add),
        ),

      )
    );
  }
}