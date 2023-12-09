import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFBE3144);
  static const Color secondaryColor = Color(0xFF872341);
  static const Color backgroundColor = Color(0xFF22092C);
  static const TextStyle topBarButtonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle getTitleTextStyle(Orientation ori) => ori == Orientation.landscape ? AppTheme.titleTextStyle : AppTheme.mobileTitleTextStyle;
  static TextStyle getH1TextStyle(Orientation ori) => ori == Orientation.landscape ? AppTheme.h1TextStyle : AppTheme.mobileH1TextStyle;
  static TextStyle getH2TextStyle(Orientation ori) => ori == Orientation.landscape ? AppTheme.h2TextStyle : AppTheme.mobileH2TextStyle;
  static TextStyle getNameTextStyle(Orientation ori) => ori == Orientation.landscape ? AppTheme.nameTextStyle : AppTheme.mobileNameTextStyle;

  static const TextStyle titleTextStyle = TextStyle(
    color: primaryColor,
    fontSize: 32,
    fontWeight: FontWeight.bold
  );
  
  static const TextStyle h1TextStyle = TextStyle(
    color: Colors.white,
    fontSize: 40,
  );
  static const TextStyle h2TextStyle = TextStyle(
    color: Colors.white,
    fontSize: 32,
  );

  static const TextStyle nameTextStyle = TextStyle(
    color: primaryColor,
    fontSize: 40,
    fontWeight: FontWeight.bold
  );

  // Mobile Text Styles
  static const TextStyle mobileTopBarButtonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 14,
  );
  static const TextStyle mobileTitleTextStyle = TextStyle(
    color: primaryColor,
    fontSize: 24,
    fontWeight: FontWeight.bold
  );
  
  static const TextStyle mobileH1TextStyle = TextStyle(
    color: Colors.white,
    fontSize: 32,
  );
  static const TextStyle mobileH2TextStyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
  );

  static const TextStyle mobileNameTextStyle = TextStyle(
    color: primaryColor,
    fontSize: 32,
    fontWeight: FontWeight.bold
  );
}
