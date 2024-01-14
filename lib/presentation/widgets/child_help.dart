import 'package:teencare/constants/misc.dart';
import 'package:flutter/material.dart';

import 'custom_card.dart';

class ChildHelp extends StatelessWidget {
  final double width;
  final double height;

  const ChildHelp({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final heading = Padding(
      padding: EdgeInsets.fromLTRB(0,0.03*height,0,0),
      child: const Text(
        "We're Here to Help with Your Concerns",
        style:
        TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
    );
    final card1 = CustomCard(
      width: width,
      height: height,
      title: card1Data["title"].toString(),
      description:
          card1Data["description"].toString(),
    );
    final card2 = CustomCard(
      width: width,
      height: height,
      title: card2Data["title"].toString(),
      description:
          card2Data["description"].toString(),
    );
    final card3 = CustomCard(
      width: width,
      height: height,
      title: card3Data["title"].toString(),
      description: card3Data["description"].toString()
    );
    final card4 = CustomCard(
      width: width,
      height: height,
      title: card4Data["title"].toString(),
      description: card4Data["description"].toString(),
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
      child: Container(
        color: const Color(0xFFD9E2FE),
        width: width,
        height: (width<768)?null:0.95 * height,
        child: (width < 768)
            ? Column(
                children: [
                  heading,
                  card1,
                  card2,
                  card3,
                  card4,
                ],
              )
            : Stack(
                children: [
                  Positioned(
                    left: 0.1614583333 * width,
                    top: 0.2096354167 * height,
                    child: card1,
                  ),
                  Positioned(
                    left: 0.1822916667 * width,
                    top: 0.5377604167 * height,
                    child: card2,
                  ),

                  //right
                  Positioned(
                    right: 0.1614583333 * width,
                    top: 0.2356770833 * height,
                    child: card3,
                  ),
                  Positioned(
                    right: 0.2055208333 * width,
                    top: 0.5538020833 * height,
                    child: card4,
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/child.png",
                      width: 0.22 * width,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: heading,
                  ),
                ],
              ),
      ),
    );
  }
}