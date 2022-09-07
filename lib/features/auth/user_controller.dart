import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_app/features/auth/models/user_model.dart';

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
      emailController.text.isNotEmpty)
  {
    return true;
  }
  return false;
}

final obText = StateProvider<bool>((ref) => true);

final register = StateProvider<void>((ref) {
  if (checkEmptyField()) {
    UserModel(
      phone: phoneController.text,
      email: emailController.text,
      image: imageController.text,
      name: nameController.text,
      password: passwordController.text,
    );
  }
});
