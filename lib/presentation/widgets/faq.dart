import 'package:airdroid/constants/feature_data.dart';
import 'package:airdroid/presentation/widgets/expandable_card.dart';
import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  final double width;
  final double height;

  const Faq({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0.05276041667 * height, 0, 0),
          child: const Text(
            "FAQs & Hot Topics",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0.07552083333 * height, 0, 0),
          child: SizedBox(
            width: (width<768) ? width :0.3125 * width,
            child: TabBar(
              indicatorColor: const Color(0xFF446EFC),
              // indicator: UnderlineTabIndicator(
              //     borderSide: BorderSide(width: 5.0),
              //     insets: EdgeInsets.symmetric(horizontal:16.0)
              // ),
              labelColor: const Color(0xFF446EFC),
              tabs: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0.02994791667 * height),
                  child: const Text(
                    'FAQs',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0.02994791667 * height),
                  child: const Text(
                    'Hot Topics',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: (width<768) ? width : 0.5625 * width,
          height: 0.4002604167 * height,
          child: TabBarView(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  for (var i in faq)
                    ExpandableCard(
                      title: i.title,
                      subTitle: i.subTitle,
                    ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  for (var i in faq.reversed)
                    ExpandableCard(
                      title: i.title,
                      subTitle: i.subTitle,
                    )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
