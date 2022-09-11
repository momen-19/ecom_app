import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:posts_app/theme/colors.dart';
import 'package:posts_app/widgets/button_app_widget.dart';

class OutBoardingScreen extends StatelessWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/out_boarding1.png'),
            Text(
              'History Culture glass',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.sp,
              ),
            ),
            Text(
              'Gülçehre İbrik Limited Edition',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonAppWidget(
                  onPressed: () {
                    print('object');
                    Navigator.pushNamed(context, '/register_screen');
                  },
                  height: 50.h,
                  width: 160.w,
                  borderColor: ColorManger.defaultColor,
                  text: 'Register Now',
                  colorButton: ColorManger.defaultColor,
                  radius: 15.sp,
                ),
                ButtonAppWidget(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login_screen');
                  },
                  height: 50.h,
                  width: 160.w,
                  borderColor: ColorManger.defaultColor,
                  text: 'Login Now',
                  colorButton: ColorManger.defaultColor,
                  radius: 15.sp,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
