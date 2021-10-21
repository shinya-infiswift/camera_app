import 'package:flutter/material.dart';
import 'dart:io';

class DisplayPictureScreenArguments {
  final String imagePath;

  DisplayPictureScreenArguments(this.imagePath);
}

class DisplayPictureScreen extends StatelessWidget {

  static const routeName = '/preview';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as DisplayPictureScreenArguments;
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture')),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Image.file(File(args.imagePath)),
    );
  }
}
