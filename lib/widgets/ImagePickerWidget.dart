import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.grey.shade400,
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height) / 3,
            child: (file == null
                ? const Center(child: Text('No Image Found'))
                : Image.file(File(file!.path), fit: BoxFit.cover)),
          ),
          ElevatedButton(
              onPressed: () async {
                final XFile? image =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = image;
                });
              },
              child: const Text('Pick Image'))
        ],
      ),
    );
  }
}
