
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:posts_app/features/auth/user_controller.dart';
import 'package:posts_app/features/auth/widgets/rich_text_widget.dart';
import 'package:posts_app/features/auth/widgets/text_form_field_widget.dart';
import 'package:posts_app/theme/colors.dart';
import 'package:posts_app/widgets/button_app_widget.dart';
import 'package:posts_app/widgets/api_helper.dart';

class FormWidget extends ConsumerWidget with ApiHelper {
  String title;
  void Function() onPressed;

  FormWidget({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 30.sp,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          TextFormFieldWidget(
            keyboardType: TextInputType.name,
            controller: nameController,
            prefixIcon: const Icon(Icons.person_outline_outlined),
            hintText: 'Name',
            width: double.infinity.w,
            height: 50.h,
            label: 'Name',
          ),
          TextFormFieldWidget(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            prefixIcon: const Icon(Icons.email_outlined),
            hintText: 'Email',
            width: double.infinity.w,
            height: 50.h,
            label: 'Email',
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15.h),
            child: TextField(
              controller: passwordController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.password_outlined),
                label: const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 10.w),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                hintText: 'Password',
              ),
              obscureText: true,
            ),
          ),
          TextFormFieldWidget(
            keyboardType: TextInputType.text,
            controller: phoneController,
            prefixIcon: const Icon(Icons.phone),
            hintText: 'Phone',
            width: double.infinity.w,
            height: 50.h,
            label: 'Phone',
          ),
          Row(
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
          ),
          SizedBox(
            height: 180.h,
          ),
          Center(
            child: ButtonAppWidget(
              colorButton: ColorManger.defaultColor,
              onPressed: () {
              },
              width: 220.w,
              height: 50.h,
              radius: 30,
              text: 'Sign Up',
              borderColor: ColorManger.defaultColor,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Center(
            child: RichTextWidget(
              textA: 'Already have an account?',
              textB: 'Sign In',
            ),
          ),
        ],
      ),
    );
  }
}
