import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageProfile extends StatefulWidget {
  const UploadImageProfile({
    Key? key,
  }) : super(key: key);

  @override
  State<UploadImageProfile> createState() => _UploadImageProfileState();
}

class _UploadImageProfileState extends State<UploadImageProfile> {
  File? _image;
  PickedFile? _pickedFile;
  final _picker = ImagePicker();

  Future<void> _pickImage() async {
    _pickedFile = await _picker.getImage(source: ImageSource.gallery);
    if (_pickedFile != null) {
      setState(() {
        _image = File([], _pickedFile!.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => _pickImage,
          icon: const Icon(
            Icons.image_outlined,
          ),
        ),
      ],
    );
  }
}
