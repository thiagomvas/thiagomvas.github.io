import 'package:flutter/material.dart';
import 'package:portfolio/AppSettings.dart';
import 'package:portfolio/AppTheme.dart';
import 'package:portfolio/Widgets/TopBarButton.dart';
import 'package:portfolio/Widgets/hero.dart';
import 'package:portfolio/Widgets/AboutMe.dart';
import 'package:portfolio/projects.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: OrientationBuilder(builder: (context, orientation) {
        // Calculate crossAxisCount based on screen width
        int crossAxisCount = (orientation == Orientation.portrait) ? 2 : 4;
        return ListView(
          physics: BouncingScrollPhysics(),
          controller: controller,
          children: [
            Padding(padding: EdgeInsets.only(top: 15)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TopBarButton(onPressed: () => controller.jumpTo(100), text: "Home", orientation: orientation,),
              TopBarButton(onPressed: () => controller.jumpTo(1150), text: "About", orientation: orientation,),
              TopBarButton(onPressed: () => controller.jumpTo(1900), text: "Projects", orientation: orientation,),
              TopBarButton(onPressed: () => controller.jumpTo(1150), text: "Contact", orientation: orientation,),
            ]),
            HeroPage(
              orientation: orientation,
            ),
            Container(height: 250, key: AppSettings.aboutKey),
            AboutMe(orientation: orientation,),
            Container(height: 250, key: AppSettings.projectsKey, child: Center(child: Text("Projects", style: AppTheme.getTitleTextStyle(orientation)),)),
            ProjectsGrid(
              itemsPerRow: crossAxisCount,
            ),
            Container(height: 250),
          ],
        );
      }),
    );
  }
}
