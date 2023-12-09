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
              width: 75,
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

class TopBarButton2 extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  bool isHovered = false;
  TopBarButton2({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) => isHovered = true,
      onExit: (event) => isHovered = false,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 50,
            child: Center(
              child: Text(text),
            ),
          ),
          Container(
            width: 100,
            height: 200,
            color: isHovered ? Colors.white : Colors.red,
          )
        ],
      ),
    );
  }
}
