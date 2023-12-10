import 'package:flutter/material.dart';
import 'package:portfolio/AppSettings.dart';
import 'package:portfolio/AppTheme.dart';
import 'package:portfolio/Project.dart';

class GridItem extends StatelessWidget {
  final Project project;

  const GridItem({super.key, required this.project});


  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => AppSettings.LaunchUrl(project.projectLink),
        child: Container(
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(project.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.black.withOpacity(0.5),
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.title,
                      style: AppTheme.projectTitleTextStyle,
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      _truncateDescription(project.description),
                      maxLines: 3, // Adjust as needed
                      overflow: TextOverflow.ellipsis,
                      style: AppTheme.projectDescriptionTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _truncateDescription(String description) {
    // Adjust the length as needed
    return (description.length > 100)
        ? '${description.substring(0, 100)}...'
        : description;
  }
}
