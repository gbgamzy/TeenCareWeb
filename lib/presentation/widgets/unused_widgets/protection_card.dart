import 'package:flutter/material.dart';

class ProtectionCard extends StatelessWidget {
  final double width;
  final double height;
  const ProtectionCard({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.4869791667*height,
      width: 0.2151041667*width,
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0.015625*width),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/download.png"),
              Padding(
                padding: EdgeInsets.fromLTRB(0,0.026*height,0,0.013*height),
                child: const Text(
                  "Download and Install",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const Text(
                "Download AirDroid Parental Control on the parent's phone.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
