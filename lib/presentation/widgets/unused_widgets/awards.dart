import 'package:flutter/material.dart';

class Awards extends StatefulWidget {
  final double width;

  const Awards({
    super.key,
    required this.width,
  });

  @override
  State<Awards> createState() => _AwardsState();
}

class _AwardsState extends State<Awards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0, horizontal: 0.02604166667 * widget.width),
                child: const Text("Awarded by"),
              ),
              Image.asset("assets/images/badge1.png"),
              Image.asset("assets/images/badge1.png"),
              Image.asset("assets/images/badge1.png"),
              Image.asset("assets/images/badge1.png"),
              Image.asset("assets/images/badge1.png"),
              Image.asset("assets/images/badge1.png"),
              Image.asset("assets/images/badge1.png"),
              Image.asset("assets/images/badge1.png"),
              Image.asset("assets/images/badge1.png"),
              Image.asset("assets/images/badge1.png"),
            ],
          ),
        ),
      ),
    );
  }
}
