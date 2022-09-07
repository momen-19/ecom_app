import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


mixin ApiHelper{
  static void showSnackBar(BuildContext context , {required bool error,required String message}){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.sp)),
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(
          seconds: 2,
        ),
        backgroundColor: error ?  Colors.red : Colors.green,
        content: Text(
          message,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
