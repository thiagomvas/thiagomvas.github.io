import 'package:flutter/material.dart';
import 'package:portfolio/AppSettings.dart';
import 'package:portfolio/widgets/GridItem.dart';

class ProjectsGrid extends StatelessWidget {
  final int itemsPerRow;

  ProjectsGrid({super.key, required this.itemsPerRow});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(padding: EdgeInsets.all(16),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: itemsPerRow,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: AppSettings
            .projects.length, // Adjust the number based on your projects
        itemBuilder: (BuildContext context, int index) {
          return GridItem(
            project: AppSettings.projects[index],
          );
        },
      ),
    );
  }
}

