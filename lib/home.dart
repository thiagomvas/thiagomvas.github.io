import 'package:flutter/material.dart';
import 'package:portfolio/AppTheme.dart';
import 'package:portfolio/Widgets/TopBarButton.dart';
import 'package:portfolio/hero.dart';
import 'package:portfolio/projects.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> myItems = [
    {
      'title': 'Project 1',
      'imageUrl': 'https://placehold.co/600x400/png',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    },
    {
      'title': 'Project 2',
      'imageUrl': 'https://placehold.co/600x400/png',
      'description':
          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: OrientationBuilder(builder: (context, orientation) {
        // Calculate crossAxisCount based on screen width
        int crossAxisCount = (orientation == Orientation.portrait) ? 2 : 3;
        return ListView(
          children: [
            Row(children: 
            [
              Spacer(flex: 1),
              TopBarButton(onPressed: () {}, text: "Test"),
              Spacer(flex: 10),
              TopBarButton(onPressed: () {}, text: "Test"),
              TopBarButton(onPressed: () {}, text: "Test"),
              Spacer(flex: 1),
            ]),
            HeroPage(),
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
