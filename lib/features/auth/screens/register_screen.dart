import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_app/features/auth/user_controller.dart';
import 'package:posts_app/features/auth/widgets/form_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:posts_app/widgets/app_bar_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Register'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Consumer(
          builder: (context, ref, child) => FormWidget(
            title: 'Create your account',
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
