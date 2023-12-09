import 'package:flutter/material.dart';
import 'package:portfolio/Project.dart';
import 'package:portfolio/Skill.dart';
import 'package:portfolio/Widgets/ContentItem.dart';

class AppSettings {
  static const String title = "Portfolio";
  static const String name = "Thiago M. Vasconcelos";
  static const List<String> titles = [
    "Software Developer",
    "Game Developer",
    "Computer Science Undergrad"
  ];
  static const String aboutMe = "I'm Thiago Menezes Vasconcelos, a Computer Science undergrad at Federal University of Sergipe (UFS), passionate about software and game development, automation, and creating tools that make a difference. With a strong foundation in C# and a keen interest in various technologies, I thrive on turning ideas into reality through coding. Explore my portfolio to discover the projects that showcase my dedication to innovation and problem-solving.";

  static List<Skill> skills = [
    Skill("C#", "assets/icons/csharp.svg"),
    Skill("Dart", "assets/icons/dart.svg"),
    Skill("HTML", "assets/icons/html5.svg"),
    Skill("CSS", "assets/icons/css3.svg"),
    Skill("JavaScript", "assets/icons/javascript.svg"),
    Skill("C", "assets/icons/c.svg"),
  ];

  static List<Skill> technologies = [
    Skill(".NET", "assets/icons/dotnet.svg"),
    Skill("Flutter", "assets/icons/flutter.svg"),
    Skill("Unity", "assets/icons/unity.svg"),
    Skill("MongoDB", "assets/icons/mongodb.svg"),
    Skill("Git", "assets/icons/git.svg"),
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

  static Column GenerateSkillsGrid(int itemsPerRow, Orientation orientation)
  {
      List<Row> rows = [];
      
      for (int i = 0; i < skills.length; i += itemsPerRow)
      {
        List<Widget> rowItems = [];
        for (int j = 0; j < itemsPerRow; j++)
        {
          if (i + j < skills.length)
          {
            rowItems.add(ContentItemSvg(
              iconUrl: skills[i + j].iconUrl,
              title: skills[i + j].name,
              orientation: orientation,
            ));
          }
        }
        rows.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: rowItems,
        ));
      }

      return Column(children: rows);
  }

    static Column GenerateGrid(List<Skill> data, int itemsPerRow, Orientation orientation)
  {
      List<Row> rows = [];
      
      for (int i = 0; i < data.length; i += itemsPerRow)
      {
        List<Widget> rowItems = [];
        for (int j = 0; j < itemsPerRow; j++)
        {
          if (i + j < data.length)
          {
            rowItems.add(ContentItemSvg(
              iconUrl: data[i + j].iconUrl,
              title: data[i + j].name,
              orientation: orientation,
            ));
          }
        }
        rows.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: rowItems,
        ));
      }

      return Column(children: rows);
  }
}
