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
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {

          },
          icon: const Icon(
            Icons.image_outlined,
          ),
        ),
        const Text('Select your Profile Image'),
      ],
    );
  }
}