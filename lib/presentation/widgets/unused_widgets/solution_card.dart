import 'package:flutter/material.dart';

class SolutionCard extends StatelessWidget {
  final double height;
  final double width;

  const SolutionCard({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0078125*width),
      child: Container(
        constraints: BoxConstraints(
          minHeight: 0.4075520833*height
        ),
        child: Card(
          elevation: 5,
          color: const Color(0xFFFFFFFF),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.017708*width),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0,0.05338541667*height, 0, 0.02604166667*height),
                  child: Image.asset("assets/images/solution1.png"),
                ),
                const Text(
                  "teencare Personal",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,0.0130208*height,0,0),
                  child: const Text(
                    "Your Best Mobile Device Management Suite",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,0.05859375*height,0,0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Color(0xFF446EFC))
                      )
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Learn More",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF446EFC),
                      ),
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
