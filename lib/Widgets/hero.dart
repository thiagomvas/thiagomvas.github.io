import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/AppTheme.dart';
import 'package:portfolio/Widgets/CustomIconButton.dart';

class HeroPage extends StatelessWidget {
  final Orientation orientation;
  HeroPage({super.key, required this.orientation});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Image(
              image: const AssetImage("assets/portfoliobg.png"),
              fit: BoxFit.cover,
              color: Colors.white.withOpacity(0.2),
              colorBlendMode: BlendMode.modulate,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Title(
                  orientation: orientation,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  Title({
    super.key,
    required this.orientation,
  });

  Orientation orientation;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(top: 150)),
        Text("Hi there! 👋", style: AppTheme.getH2TextStyle(orientation)),
        Row(
          children: [
            Text("My name is ", style: AppTheme.getH2TextStyle(orientation)),
            Text(
              "Thiago M. Vasconcelos",
              style: AppTheme.getNameTextStyle(orientation),
            )
          ],
        ),
        Row(
          children: [
            Text("And I'm a ", style: AppTheme.getH2TextStyle(orientation)),
            DefaultTextStyle(
              style: AppTheme.getTitleTextStyle(orientation),
              child: AnimatedTextKit(
                pause: Duration(milliseconds: 1500),
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText("Computer Science Undergrad"),
                  TypewriterAnimatedText("Game Developer"),
                  TypewriterAnimatedText("Software Developer"),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            CustomIconButton(orientation: orientation, text: 'GitHub', iconPath: "icons/github.png", onPressed: () {}),
            CustomIconButton(orientation: orientation, text: 'LinkedIn', iconPath: "icons/linkedin.png", onPressed: () {}),
          ],
        )
      ],
    );
  }
}
