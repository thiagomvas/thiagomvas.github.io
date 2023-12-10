import 'package:flutter/material.dart';
import 'package:portfolio/AppTheme.dart';

class TopBarButton extends StatefulWidget {
  final GestureTapCallback onPressed;
  final String text;
  final Orientation orientation;
  bool isHovered = false;
  TopBarButton({required this.onPressed, required this.text, required this.orientation});

  @override
  State<TopBarButton> createState() => _TopBarButtonState();
}

class _TopBarButtonState extends State<TopBarButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onHover: (event) => setState(() => widget.isHovered = true),
        onExit: (event) => setState(() => widget.isHovered = false),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: widget.orientation == Orientation.landscape ? 150 : 85,
                height: 50,
                child: Center(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("< ", style: AppTheme.getTopbarButtonSecondaryTextStyle(widget.orientation)),
                    Text(widget.text, style: AppTheme.getTopbarButtonTextStyle(widget.orientation)),
                    Text(" />", style: AppTheme.getTopbarButtonSecondaryTextStyle(widget.orientation)),
                  ]),
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
      ),
    );
  }
}