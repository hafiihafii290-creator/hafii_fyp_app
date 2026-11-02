import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hafii_fyp_app/register_screen.dart';
import 'package:hafii_fyp_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showPassword = true;
  final passwordcontroller = TextEditingController();

  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('whtsapp'),
          backgroundColor: Colors.green,
        ),
        body: RegisterScreen(name: name, email: email, password: password, confirmPassword: confirmPassword),
      ),
    );
  }
}

