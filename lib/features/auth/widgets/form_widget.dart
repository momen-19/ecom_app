import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:posts_app/features/auth/user_controller.dart';
import 'package:posts_app/features/auth/widgets/rich_text_widget.dart';
import 'package:posts_app/features/auth/widgets/text_form_field_widget.dart';
import 'package:posts_app/theme/colors.dart';
import 'package:posts_app/widgets/button_app_widget.dart';
import 'package:posts_app/widgets/api_helper.dart';

class FormWidget extends StatelessWidget  with ApiHelper{

  String title;
  void Function() onPressed;

  FormWidget({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool obscureText = false;
    return Form(
      child: Column(
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
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.password_outlined),
                suffixIcon: GestureDetector(
                  onTap: (){
                    obscureText =! obscureText;
                  },
                  child: const Icon(Icons.remove_red_eye_outlined),
                ),
                label: const Text('Password',
                    style: TextStyle(
                      fontSize: 18,
                    ),),
                contentPadding: EdgeInsets.only(left: 10.w),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),),
                hintText: 'Password',
              ),
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
          SizedBox(
            height: 240.h,
          ),
          ButtonAppWidget(
            colorButton: ColorManger.defaultColor,
            onPressed: () {
              if (checkEmptyField()) {
                Text(123.toString());
              }
              showSnackBar(context, error: false, message: 'Please enter correct data');
            },
            width: 220.w,
            height: 50.h,
            radius: 30,
            text: 'Sign Up',
            borderColor: ColorManger.defaultColor,
          ),
          SizedBox(
            height: 15.h,
          ),
          RichTextWidget(
            textA: 'Already have an account?',
            textB: 'Sign In',
          ),
        ],
      ),
    );
  }
}
