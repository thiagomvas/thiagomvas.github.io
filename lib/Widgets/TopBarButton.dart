import 'package:flutter/material.dart';
import 'package:portfolio/AppTheme.dart';

class TopBarButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  bool isHovered = false;
  TopBarButton({required this.onPressed, required this.text});

  @override
  State<TopBarButton> createState() => _TopBarButtonState();
}

class _TopBarButtonState extends State<TopBarButton> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) => setState(() => widget.isHovered = true),
      onExit: (event) => setState(() => widget.isHovered = false),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 50,
              child: Center(
                child: Text(widget.text, style: AppTheme.topBarButtonTextStyle),
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 200), 
              width: 100,
              height: 2,
              color: widget.isHovered ? Colors.white : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}