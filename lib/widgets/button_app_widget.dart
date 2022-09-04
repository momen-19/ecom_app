import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:posts_app/theme/colors.dart';

class ButtonAppWidget extends StatelessWidget {
  String text;
  double width;
  double height;
  double radius;
  Color colorButton = colorRed;
  Color borderColor;
 void  Function() onPressed;

  ButtonAppWidget({
    Key? key,
    required this.colorButton,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.radius,
    required this.text,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: colorButton,
        minimumSize: Size(
          width,
          height,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        side: BorderSide(
          color: borderColor,
        )
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}