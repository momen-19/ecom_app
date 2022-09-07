
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageProfileUploader extends StatefulWidget {
  const ImageProfileUploader({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageProfileUploader> createState() => _ImageProfileUploaderState();
}

class _ImageProfileUploaderState extends State<ImageProfileUploader> {
  PickedFile? _pickedFile;
  final _picker = ImagePicker();
  Future<void> _pickImage() async {
    _pickedFile = await _picker.getImage(source: ImageSource.gallery);
    if (_pickedFile != null) {
      setState(() {
        _pickedFile = _pickedFile;
      });
    }
    //print("Image picker error ");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: _pickImage,
          icon: const Icon(
            Icons.image_outlined,
          ),
        ),
      ],
    );
  }
}
