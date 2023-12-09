import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/AppTheme.dart';

class ContentItem extends StatelessWidget {
  ContentItem(
      {super.key,
      required this.iconUrl,
      required this.title,
      required this.orientation});

  final String iconUrl;
  final String title;
  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Image.asset(iconUrl, width: AppTheme.getIconButtonSize(orientation)),
        Text(title, style: AppTheme.contentItemTextStyle,)
      ],
    ));
  }
}

class ContentItemSvg extends StatelessWidget {
  ContentItemSvg(
      {super.key,
      required this.iconUrl,
      required this.title,
      required this.orientation});

  final String iconUrl;
  final String title;
  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
        child: Column(
      children: [
        SvgPicture.asset(iconUrl, width: AppTheme.getIconButtonSize(orientation)),
        Text(title, style: AppTheme.contentItemTextStyle,)
      ],
    ));
  }
}
