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
      title: "Challenge of Personal Security",
      description:
          "With 460,000 children going missing each year in the United States alone, and the rise of secretive online communication, keeping your child safe has never been more challenging. No matter how hard you try, you simply don’t have the time and energy to follow their every move. We're here to help.",
    );
    final card2 = CustomCard(
      width: width,
      height: height,
      title: "Massive Online Information & Cyberbullying",
      description:
          "Cyberbullying is an anonymous, all-consuming, and potentially deadly occurrence on the dark side of social media which can result in a sharp deterioration in anxiety, depression, and suicide in the most extreme cases. Your child may be surrounded by potentially significant risks anytime. We're here to help.",
    );
    final card3 = CustomCard(
      width: width,
      height: height,
      title: "Uncontrolled Addiction & Distractions",
      description: "Over 90% of children aged 7-12 are online regularly on their own devices. While this allows them to learn and have fun, it also connects them with millions of highly addictive games, apps, and other forms of content. The destructive effects of an uncontrolled digital addiction affect all aspects of their lives. We're here to help."
    );
    final card4 = CustomCard(
      width: width,
      height: height,
      title: "Worry about Physical & Mental Health",
      description: "The COVID-19 pandemic and the global digital revolution have created a storm that's pushing children to sit in front of screens for hours and hours every day. Your child can be experiencing endocrine disorders, suppressed appetite, immune response degradation, and other undiagnosed issues. We're here to help."
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