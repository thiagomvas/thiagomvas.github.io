import 'package:flutter/material.dart';
import 'package:portfolio/AppSettings.dart';
import 'package:portfolio/AppTheme.dart';
import 'package:portfolio/Skill.dart';

class ContentTab extends StatelessWidget {
  const ContentTab({
    super.key,
    required this.orientation,
    required this.content, required this.title,
  });
  final String title;
  final List<Skill> content;
  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: orientation == Orientation.landscape ? 500 : 400,
      height: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppTheme.secondaryColor.withOpacity(0.2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTheme.contentTabTextStyle,
          ),
          Padding(padding: EdgeInsets.all(10),),
          AppSettings.GenerateGrid(content, 4, orientation),
        ],
      ),
    );
  }
}
