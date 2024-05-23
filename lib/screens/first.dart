import 'package:flutter/material.dart';
import 'camera.dart'; // Import the CameraScreen widget from camera.dart

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UCR Booth'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TakePictureScreen()),
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          child: const Text(
            'Take a Picture',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
