import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:ocr_app/ui/screens/photo_preview/photo_preview.dart';
import 'ui/screens/take_photo/camera_container.dart';


class StackNavigator extends StatelessWidget {
  const StackNavigator({Key? key, required this.camera}): super(key: key);

  final CameraDescription camera;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: CameraScreen.routeName,
      routes: <String, WidgetBuilder>{
        CameraScreen.routeName: (BuildContext ctx) => CameraScreen(camera: camera),
        DisplayPictureScreen.routeName: (BuildContext ctx) => DisplayPictureScreen(),
      }
    );
  }
}
