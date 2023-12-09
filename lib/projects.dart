import 'package:flutter/material.dart';
import 'package:portfolio/AppSettings.dart';

class ProjectsGrid extends StatelessWidget {
  final int itemsPerRow;

  ProjectsGrid({super.key, required this.itemsPerRow});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
          title: AppSettings.projects[index].title,
          description: AppSettings.projects[index].description,
          imageUrl: AppSettings.projects[index].imageUrl,
        );
      },
    );
  }
}

class GridItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  GridItem({
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.black.withOpacity(0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  _truncateDescription(description),
                  maxLines: 3, // Adjust as needed
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
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
