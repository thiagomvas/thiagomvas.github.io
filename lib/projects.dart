import 'package:flutter/material.dart';
class Projects extends StatelessWidget {
  // Replace this list with your own data
  final List<Map<String, String>> myItems = [
    {
      'title': 'Project 1',
      'imageUrl': 'https://placehold.co/600x400/png',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    },
    {
      'title': 'Project 2',
      'imageUrl': 'https://placehold.co/600x400/png',
      'description': 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    },
    {
      'title': 'Project 2',
      'imageUrl': 'https://placehold.co/600x400/png',
      'description': 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    },
    {
      'title': 'Project 2',
      'imageUrl': 'https://placehold.co/600x400/png',
      'description': 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    },
    {
      'title': 'Project 2',
      'imageUrl': 'https://placehold.co/600x400/png',
      'description': 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    },
    {
      'title': 'Project 2',
      'imageUrl': 'https://placehold.co/600x400/png',
      'description': 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Flutter Grid'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          // Adjust the number of columns based on orientation
          int columns = (orientation == Orientation.portrait) ? 2 : 3;

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: myItems.length,
            itemBuilder: (context, index) {
              return GridItem(
                title: myItems[index]['title']!,
                imageUrl: myItems[index]['imageUrl']!,
                description: myItems[index]['description']!,
              );
            },
          );
        },
      ),
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
    return (description.length > 200)
        ? '${description.substring(0, 200)}...'
        : description;
  }
}