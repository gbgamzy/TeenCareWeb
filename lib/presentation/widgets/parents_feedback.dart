import 'package:airdroid/constants/feedback_data.dart';
import 'package:airdroid/presentation/widgets/feebback_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ParentsFeedback extends StatefulWidget {
  final double width;
  final double height;

  ParentsFeedback({
    super.key,
    required this.width,
    required this.height,
  });
  static const data = feedbackConstants;

  @override
  State<ParentsFeedback> createState() => _ParentsFeedbackState();
}

class _ParentsFeedbackState extends State<ParentsFeedback> {
  final controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0.03104166667 * widget.width, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Hear Voices from Parents",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0.015625*widget.width,0,0,0),
                child: IconButton(
                    onPressed: (){
                      controller.previousPage();
                    },
                    icon: const Icon(Icons.arrow_back)
                ),
              ),
              Expanded(
                  child: CarouselSlider.builder(
                    carouselController: controller,
                    options: CarouselOptions(
                        aspectRatio: 3.0,
                        enlargeCenterPage: false,
                        viewportFraction: 1),
                    itemCount: ParentsFeedback.data.length / 3 as int,
                    itemBuilder: (context, index, check) {
                      final first = ParentsFeedback.data[index * 3];
                      final second = ParentsFeedback.data[(index * 3) + 1];
                      final third = ParentsFeedback.data[(index * 3) + 2];
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [first, second, third]
                            .map((e) => FeedbackCard(
                            width: widget.width, height: widget.height, dataModel: e))
                            .toList(),
                      );
                    },
                  )
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(0,0,0.015625*widget.width,0),
                child: IconButton(
                    onPressed: (){
                      controller.nextPage();
                    },
                    icon: const Icon(Icons.arrow_forward)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
