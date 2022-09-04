import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

TextEditingController nameController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController imageController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

bool checkEmptyField() {
  if (nameController.text.isNotEmpty &&
      phoneController.text.isNotEmpty &&
      passwordController.text.isNotEmpty &&
      imageController.text.isNotEmpty &&
      emailController.text.isNotEmpty) {
    return true;
  }
  return false;
}