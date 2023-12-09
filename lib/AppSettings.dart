import 'package:portfolio/Project.dart';

class AppSettings {
  static const String title = "Portfolio";
  static const String name = "Thiago M. Vasconcelos";
  static const List<String> titles = [
    "Software Developer",
    "Game Developer",
    "Computer Science Undergrad"
  ];

  static List<Project> projects = [
    Project(
        "Project 1",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://placehold.co/600x400/png"),
    Project(
        "Project 2",
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        "https://placehold.co/600x400/png"),
  ];

  static const String email = "thiagomvas@gmail.com";
  static const String githubUrl = "https://github.com/thiagomvas";
  static const String linkedinUrl =
      "https://www.linkedin.com/in/thiago-m-vasconcelos/";
}
