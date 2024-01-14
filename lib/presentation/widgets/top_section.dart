import 'package:teencare/presentation/widgets/feature_pending_dialog.dart';
import 'package:flutter/material.dart';

import 'button.dart';
import 'header.dart';

class TopSection extends StatelessWidget {
  final double width;
  final double height;

  const TopSection({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (0.9 * height) + 56,
      width: width,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/images/kids.png",
            fit: BoxFit.fitHeight,
            height: (width < 576) ? height : 0.9 * height,
          ),
          if (width >= 768)
            Header(
              width: width,
              height: height,
            ),
          SizedBox(
            width: (width < 768) ? width : 0.6135 * width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "TeenCare Parental Control",
                  style: TextStyle(
                    fontSize: (width < 768) ? 35 : 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0.03 * height, 0, 0),
                  child: Text(
                    "The Best Comprehensive Parental Control App",
                    style: TextStyle(
                      fontSize: (width < 768) ? 21 : 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0.02 * width, 0, 0),
                  child: Text(
                    "Help parents protect children in digital life, safeguard offline activities and guide children to build healthy digital habits",
                    style: TextStyle(
                      fontSize: (width < 768) ? 16 : 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0.0442708 * height, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                        title: "Try It",
                        color: const Color(0xFFCCEFDB),
                        textColor: const Color(0xFF01B04E),
                        onPressed: () {
                          showFeaturePendingDialog(
                            context: context,
                            featureName: "This",
                          );
                        },
                        width: width,
                        height: height,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
