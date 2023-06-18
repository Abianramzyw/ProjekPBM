import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class CameraPic extends StatefulWidget {
  @override
  _CameraPicState createState() => _CameraPicState();
}

class _CameraPicState extends State<CameraPic> {
  late File _image;
  final imagePicker = ImagePicker();
  Future getImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:
              _image == null ? Text("No Image Selected") : Image.file(_image)),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        backgroundColor: Colors.green,
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
