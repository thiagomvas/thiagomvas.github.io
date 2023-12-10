import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFBE3144);
  static const Color secondaryColor = Color(0xFF872341);
  static const Color accentColor = Color(0xFFF05941);
  static const Color backgroundColor = Color(0xFF22092C);
  static const TextStyle topBarButtonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static TextStyle topBarButtonSecondaryTextStyle = TextStyle(
    color: Colors.grey[600],
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static double getIconButtonSize(Orientation ori) => ori == Orientation.landscape ? 40 : 30;
  static TextStyle getTitleTextStyle(Orientation ori) => ori == Orientation.landscape ? AppTheme.titleTextStyle : AppTheme.mobileTitleTextStyle;
  static TextStyle getH1TextStyle(Orientation ori) => ori == Orientation.landscape ? AppTheme.h1TextStyle : AppTheme.mobileH1TextStyle;
  static TextStyle getH2TextStyle(Orientation ori) => ori == Orientation.landscape ? AppTheme.h2TextStyle : AppTheme.mobileH2TextStyle;
  static TextStyle getNameTextStyle(Orientation ori) => ori == Orientation.landscape ? AppTheme.nameTextStyle : AppTheme.mobileNameTextStyle;
  static TextStyle getTopbarButtonTextStyle(Orientation ori) => ori == Orientation.landscape ? AppTheme.topBarButtonTextStyle : AppTheme.mobileTopBarButtonTextStyle;
  static TextStyle getTopbarButtonSecondaryTextStyle(Orientation ori) => ori == Orientation.landscape ? AppTheme.topBarButtonSecondaryTextStyle : AppTheme.mobileTopBarButtonSecondaryTextStyle;

  static const TextStyle projectTitleTextStyle = TextStyle(
    color: primaryColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle projectDescriptionTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );

  static const TextStyle tooltipTextStyle = TextStyle(
    color: primaryColor,
    fontSize: 14,
  );
  static const TextStyle contentItemTextStyle = TextStyle(
    color: primaryColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle contentTabTextStyle = TextStyle(
    color: accentColor,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

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
  static TextStyle mobileTopBarButtonSecondaryTextStyle = TextStyle(
    color: Colors.grey[600],
    fontSize: 14,
    fontWeight: FontWeight.bold,
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
