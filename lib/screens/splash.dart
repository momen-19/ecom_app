import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:posts_app/screens/out_boarding_screen.dart';
import 'package:posts_app/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushNamed(context, '/out_boarding_screen');
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
          width: 250.w,
          child: SvgPicture.asset(
            'assets/icons/logo.svg',
          ),
        ),
      ),
    );
  }
}
