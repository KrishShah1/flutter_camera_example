import 'package:flutter/material.dart';
import 'screens/first.dart'; // Import the FirstPage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(), // Set the FirstPage as the initial route
    );
  }
}
