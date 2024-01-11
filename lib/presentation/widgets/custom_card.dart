import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final String description;

  const CustomCard({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 0.2890625 * height
      ),
      width: (width<768) ? 0.9* width : 0.2484375 * width,
      // height: 0.2890625 * height,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: (width<768) ? 0.015*height : 0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 0.01614583333 * width,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF01B04E),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
