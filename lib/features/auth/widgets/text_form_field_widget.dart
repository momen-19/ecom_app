import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldWidget extends ConsumerWidget {
  String hintText;
  String label;
  double width;
  Icon prefixIcon;
  TextInputType keyboardType;
  double height = 50;
  TextEditingController controller;

  TextFormFieldWidget({
    Key? key,
    required this.controller,
    required this.prefixIcon,
    required this.label,
    required this.keyboardType,
    required this.width,
    required this.height,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: SizedBox(
        width: width,
        height: height,
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            label: Text(label,
                style: const TextStyle(
                  fontSize: 18,
                )),
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
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
