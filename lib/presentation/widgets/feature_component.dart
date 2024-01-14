import 'package:teencare/presentation/widgets/bubble.dart';
import 'package:teencare/presentation/widgets/expandable_card.dart';
import 'package:flutter/material.dart';

import '../../data/model/feature_data.dart';

class FeatureComponent extends StatelessWidget {
  final double width;
  final bool reverse;
  final FeatureData featureData;

  FeatureComponent(
      {super.key,
      required this.width,
      required this.reverse,
      required this.featureData});

  final cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    side: const BorderSide(
      color: Color(0xFFE5E5E5),
      width: 1.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    // List<bool> isExpanded = List.filled(widget.featureData.list.length, false);
    final children = [
      SizedBox(
        width: (width<768) ? width : 0.492 * width,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Bubble(
                title: featureData.bubbleTitle,
                bgColor: featureData.bubbleColor,
                textColor: featureData.bubbleTextColor,
                size: 36,
                width: width,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Text(
                  featureData.featureTitle,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: (width<768) ? 20 : 28,
                  ),
                ),
              ),
              for (var i = 0; i < featureData.list.length; i++)
                ExpandableCard(
                  title: featureData.list[i].title.toString(),
                  subTitle: featureData.list[i].subTitle.toString(),
                )
            ],
          ),
        ),
      ),
      SizedBox(
        width: (width<768) ? width: 0.4 * width,
        child: Image.asset(
          featureData.imagePath,
          fit: BoxFit.fill,
        ),
      )
    ];
    return SizedBox(
      width: width,
      child: (width < 768)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  children,
            )
          : Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.04302083333*width),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: reverse ? children : children.reversed.toList(),
              ),
          ),
    );
  }
}
