
import 'package:flutter/material.dart';
import 'package:portfolio/AppTheme.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.orientation, required this.text, required this.iconPath, required this.onPressed,
  });

  final String text;
  final String iconPath;
  final Function onPressed;
  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      textStyle: AppTheme.tooltipTextStyle,
      message: text,
      decoration: BoxDecoration(
        color: AppTheme.secondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        onPressed: () {},
        icon: Image.asset(
          iconPath,
          width: AppTheme.getIconButtonSize(orientation),
        ),
      ),
    );
  }
}
