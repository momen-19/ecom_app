import 'package:flutter/material.dart';
import 'package:posts_app/widgets/app_bar_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Login'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: const [
              Text(
                'Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
