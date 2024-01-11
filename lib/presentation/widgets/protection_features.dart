import 'package:airdroid/presentation/widgets/protection_card.dart';
import 'package:flutter/material.dart';

class ProtectionFeatures extends StatelessWidget {
  final double width;
  final double height;

  const ProtectionFeatures({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0.0327 * width, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Complete Family Protection in 3 Easy Steps",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0.02 * width, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProtectionCard(
                  width: width,
                  height: height,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.015625 * width),
                  child: ProtectionCard(
                    width: width,
                    height: height,
                  ),
                ),
                ProtectionCard(
                  width: width,
                  height: height,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0,0.01041666667*width,0,0),
            child: const Text(
              "View Detailed Guide",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF446EFC)
              ),
            ),
          )
        ],
      ),
    );
  }
}
