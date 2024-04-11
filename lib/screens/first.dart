import 'package:flutter/material.dart';
import 'camera.dart'; // Import the CameraScreen widget from camera.dart
import 'package:camera/camera.dart';

class FirstPage extends StatelessWidget {
  final CameraDescription camera;

  const FirstPage({Key? key, required this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TakePictureScreen(camera: camera)),
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Change the button color here
          ),
          child: const Text(
            'Take a Picture',
            style: TextStyle(color: Colors.white), // Change the text color here
          ),
        ),
      ),
    );
  }
}
