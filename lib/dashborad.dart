import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key,required this. name, required this. email});
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('name: $name'),
            Text('email: $email'),
            const Text("hello"),
            const Text("helo"),

          ],
        ),
      ),
    );
  }
}