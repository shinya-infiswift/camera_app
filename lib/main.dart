import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'stack_navigation.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();

  final firstCamera = cameras.first;
  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.camera,
  }): super(key: key);

  final CameraDescription camera;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OCR Camera',
      home: StackNavigator(camera: camera),
    );
  }
}
