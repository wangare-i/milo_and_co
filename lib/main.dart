import 'package:flutter/material.dart';
import 'home_page.dart'; // Import the HomePage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Milo & Co.',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),  // Launch HomePage
    );
  }
}
