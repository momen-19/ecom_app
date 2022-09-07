import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:posts_app/features/auth/models/user_model.dart';
import 'package:posts_app/features/auth/user_controller.dart';
import 'package:posts_app/features/auth/widgets/rich_text_widget.dart';
import 'package:posts_app/features/auth/widgets/text_form_field_widget.dart';
import 'package:posts_app/theme/colors.dart';
import 'package:posts_app/widgets/button_app_widget.dart';
import 'package:posts_app/widgets/api_helper.dart';

final formKey = GlobalKey<FormState>();

class FormWidget extends ConsumerWidget with ApiHelper {
  final String title;
  final void Function() onPressed;

  const FormWidget({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registrationFormState);
    return Form(
      key: formKey,
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
          TextFormField(
            controller: state.nameFieldState.controller,
            onSaved: (newValue) {
              ref.read(registrationFormData).copyWith(name: newValue ?? '');
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.w),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
              )),
              hintText: 'Name',
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          TextFormField(
            controller: state.emailFieldState.controller,
            onSaved: (newValue) {
              ref.read(registrationFormData).copyWith(email: newValue ?? '');
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.w),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
              )),
              hintText: 'Email',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15.h),
            child: TextFormField(
              controller: state.passwordFieldState.controller,
              keyboardType: TextInputType.text,
              onSaved: (newValue) {
                ref
                    .read(registrationFormData)
                    .copyWith(password: newValue ?? '');
              },
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
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
            ),
          ),
          TextFormField(
            controller: state.phoneFieldState.controller,
            onSaved: (newValue) {
              ref.read(registrationFormData).copyWith(phone: newValue ?? '');
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your phone';
              }
              return null;
            },
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.w),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
              )),
              hintText: 'Phone',
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
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
                formKey.currentState!.save();
                if (formKey.currentState!.validate()) {
                  ref
                      .read(registrationFormState.notifier)
                      .register(ref.read(registrationFormData));
                }
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

final registrationFormData =
    Provider.autoDispose<UserModel>((ref) => UserModel());
