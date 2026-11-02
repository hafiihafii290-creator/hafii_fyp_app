import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hafii_fyp_app/login.dart';
import 'package:hafii_fyp_app/dashborad.dart';






class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    super.key,
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  'Register here',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    hintText: 'name',
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
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
                TextField(
                  controller: confirmPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'confirm password',
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
                      Get.to(Dashboard(
                        name: "hifzza",
                        email: email.text,
                      ));
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
                    child: const Text('Register'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(LoginScreen());
                    // Navigate to the login screen
                  },
                  child:const Text(
                    'Already have an account? Login',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

