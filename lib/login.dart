
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dashborad.dart';

class LoginScreen extends StatelessWidget {
  

  final email = TextEditingController();
  final password = TextEditingController();
  // ignore: non_constant_identifier_names
  String CorrectEmail = "hifzzahifzza@gmail.com";
  // ignore: non_constant_identifier_names
  String CorrectPassword = "123456";

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 109, 111, 110),
            Color.fromARGB(255, 211, 227, 226),
          ],
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'login here',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                
                
                TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'email',
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'password',
                    prefixIcon: const Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (email.text == CorrectEmail && password.text == CorrectPassword) {
                        Get.to(Dashboard(
                          name: "hifzza",
                          email: email.text,
                        ));
                      } else {
                        Get.snackbar(
                          
                          'Error',
                          'Invalid email or password',
                          
                        );
                      }
                     // Get.to(Dashboard(
                        //name:password.text,
                        //email:email.text,
                      //));
                      //sdebugPrint('button');
                      //print(name.text);
                      //print(email.text);
                      //print(password.text);
                     // print(confirmPassword.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shadowColor: Colors.greenAccent,
                    ),
                    child: const Text('login'),
                  ),
                ),
                //TextButton(
                 // onPressed: () {},
                 // child: const Text('You have an account? Login'),
                //),
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}

