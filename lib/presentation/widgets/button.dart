import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPressed;
  final Color textColor;
  final double width;
  final double height;

  const Button({
    super.key,
    required this.title,
    required this.color,
    required this.onPressed,
    required this.textColor,
    required this.width,
    required this.height
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (width<768) ? 0.4*width : 0.16458*width,
      height: 0.0625*height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4),
                ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(
                color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )
      ),
    );
  }
}
