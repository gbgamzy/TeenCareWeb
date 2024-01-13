import 'package:airdroid/presentation/widgets/unused_widgets/solution_card.dart';
import 'package:flutter/material.dart';

class OtherSolutions extends StatelessWidget {
  final double height;
  final double width;

  const OtherSolutions({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          // padding: EdgeInsets.zero,
          padding: EdgeInsets.fromLTRB(0, 0.0596875 * height, 0, 0),
          child: const Text(
            "Explore Our Productivity Solutions",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0,0.05630208*height,0,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SolutionCard(
                width: width,
                height: height,
              ),
              SolutionCard(
                width: width,
                height: height,
              ),
              SolutionCard(
                width: width,
                height: height,
              )
            ],
          ),
        )
      ],
    );
  }
}
