import 'package:airdroid/constants/misc.dart';
import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key, required this.width, required this.height});

  final double width;
  final double height;

  final textStyle = const TextStyle(fontSize: 15, color: Colors.black);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.08571875 * height,
      width: width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8,0,0,0),
        child: Row(
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: 0.09571875 * height,
            ),
            const Text(title, style: TextStyle(fontSize: 22),)
          ],
        ),
      ),
    );
  }
}
