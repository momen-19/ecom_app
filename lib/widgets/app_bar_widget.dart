import 'package:flutter/material.dart';
import 'package:posts_app/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar AppBarWidget({required String title}){
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.sp,
        letterSpacing: 1.2,
      ),
    ),
  );
}