import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:posts_app/theme/colors.dart';

ThemeData theme = ThemeData(
  primarySwatch: Colors.red,
  scaffoldBackgroundColor: ColorManger.scaColor,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: ColorManger.scaColor,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    titleTextStyle: const TextStyle(
      fontFamily: 'Cairo',
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: ColorManger.defaultColor,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: ColorManger.defaultColor,
    unselectedItemColor: Colors.black45,
    elevation: 0,
    backgroundColor: ColorManger.scaColor,
  ),
  fontFamily: 'Cairo',
);
