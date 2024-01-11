import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color textColor;
  final double size;
  final double width;

  const Bubble({
    Key? key,
    required this.title,
    required this.bgColor,
    required this.textColor,
    required this.size,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.41,
      height: size,
      padding: EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 0.0098*width,
      ),
      decoration: ShapeDecoration(
        color: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size/2),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );


    // return SizedBox(
    //   height: size,
    //   child: Card(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(size / 2),
    //     ),
    //     color: bgColor,
    //     child: Center(
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0.0098958*width),
    //         child: Text(
    //           title,
    //           style: TextStyle(color: textColor),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
