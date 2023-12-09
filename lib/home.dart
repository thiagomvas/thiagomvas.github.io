import 'package:flutter/material.dart';
import 'package:portfolio/AppTheme.dart';
import 'package:portfolio/Widgets/TopBarButton.dart';
import 'package:portfolio/Widgets/hero.dart';
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
              TopBarButton(onPressed: () {}, text: "Home"),
              TopBarButton(onPressed: () {}, text: "About"),
              TopBarButton(onPressed: () {}, text: "Projects"),
              TopBarButton(onPressed: () {}, text: "Contact"),
            ]),
            HeroPage(
              orientation: orientation,
            ),
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
