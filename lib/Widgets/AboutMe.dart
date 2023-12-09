import 'package:flutter/material.dart';
import 'package:portfolio/AppSettings.dart';
import 'package:portfolio/AppTheme.dart';
import 'package:portfolio/Widgets/ContentItem.dart';
import 'package:portfolio/Widgets/ContentTab.dart';

class AboutMe extends StatelessWidget {
  AboutMe({super.key, required this.orientation});

  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        orientation == Orientation.landscape
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage("assets/croppedpfp.jpeg"),
                  ),
                  Container(
                    width: 600,
                    height: 300,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppTheme.secondaryColor.withOpacity(0.2)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "About Me",
                          style: AppTheme.contentTabTextStyle,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        Text(
                          AppSettings.aboutMe,
                          style: AppTheme.contentItemTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage("assets/croppedpfp.jpeg"),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                    width: orientation == Orientation.landscape ? 500 : 400,
                    height: 300,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppTheme.secondaryColor.withOpacity(0.2)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "About Me",
                          style: AppTheme.contentTabTextStyle,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                        ),
                        Text(
                          AppSettings.aboutMe,
                          style: AppTheme.contentItemTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
        Padding(padding: EdgeInsets.all(20)),
        orientation == Orientation.landscape
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContentTab(
                      orientation: orientation,
                      content: AppSettings.skills,
                      title: "Skills"),
                  ContentTab(
                    title: "Technologies",
                    orientation: orientation,
                    content: AppSettings.technologies,
                  ),
                ],
              )
            : Column(
                children: [
                  ContentTab(
                      orientation: orientation,
                      content: AppSettings.skills,
                      title: "Skills"),
                  Padding(padding: EdgeInsets.all(20)),
                  ContentTab(
                    title: "Technologies",
                    orientation: orientation,
                    content: AppSettings.technologies,
                  ),
                ],
              ),
      ],
    );
  }
}
