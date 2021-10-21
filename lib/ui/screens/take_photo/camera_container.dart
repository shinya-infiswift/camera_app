import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:ocr_app/ui/screens/take_photo/camera.dart';

// class CameraScreenArguments {
//   final CameraDescription camera;

//   CameraScreenArguments(this.camera);
// }

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key, required this.camera }): super(key: key);

  final CameraDescription camera;

  static const routeName = '/camera';

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)?.settings.arguments as CameraScreenArguments;
    return TakePictureContent(camera: this.camera);
  }
}
