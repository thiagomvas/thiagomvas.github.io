import 'package:flutter/material.dart';
import 'package:portfolio/AppTheme.dart';
import 'package:portfolio/Widgets/TopBarButton.dart';
import 'package:portfolio/Widgets/hero.dart';
import 'package:portfolio/Widgets/AboutMe.dart';
import 'package:portfolio/projects.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: OrientationBuilder(builder: (context, orientation) {
        // Calculate crossAxisCount based on screen width
        int crossAxisCount = (orientation == Orientation.portrait) ? 2 : 3;
        return ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 15)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TopBarButton(onPressed: () {}, text: "Home", orientation: orientation,),
              TopBarButton(onPressed: () {}, text: "About", orientation: orientation,),
              TopBarButton(onPressed: () {}, text: "Projects", orientation: orientation,),
              TopBarButton(onPressed: () {}, text: "Contact", orientation: orientation,),
            ]),
            HeroPage(
              orientation: orientation,
            ),
            AboutMe(orientation: orientation,),
            Container(height: 250),
            ProjectsGrid(
              itemsPerRow: crossAxisCount,
            ),
          ],
        );
      }),
    );
  }
}
