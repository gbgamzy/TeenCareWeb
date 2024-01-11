import 'package:flutter/material.dart';

import 'feature_pending_dialog.dart';

class Footer extends StatelessWidget {
  final double width;
  final double height;

  const Footer({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0A0A24),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 0.05 * width,
          vertical: 0.06225260417 * height,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "About TeenCare Parental Control",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              width: (width<768) ? width : 0.5815789474 * width,
              child: const Text(
                "TeenCare Parental Control helps parents better monitor and manage children's devices. You can quickly locate your kids and family, check location history, review children's device usage, and schedule screen time & application usage.",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0.03255208333 * height, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0.165625 * width, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Company",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            showFeaturePendingDialog(context: context);
                          },
                          child: const Text(
                            "About GAPS",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            showFeaturePendingDialog(context: context);
                          },
                          child: const Text(
                            "Contact Us",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            showFeaturePendingDialog(context: context);
                          },
                          child: const Text(
                            "Privacy Policy",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            showFeaturePendingDialog(context: context);
                          },
                          child: const Text(
                            "Payment Terms",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Resources",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          showFeaturePendingDialog(context: context);
                        },
                        child: const Text(
                          "Resource Library",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          showFeaturePendingDialog(context: context);
                        },
                        child: const Text(
                          "How-to",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          showFeaturePendingDialog(context: context);
                        },
                        child: const Text(
                          "Blog",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          showFeaturePendingDialog(context: context);
                        },
                        child: const Text(
                          "Pricing",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          showFeaturePendingDialog(context: context);
                        },
                        child: const Text(
                          "Download",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.01953125 * height),
              child: const Row(
                children: [
                  Icon(
                    Icons.copyright,
                    color: Colors.white,
                    size: 15,
                  ),
                  Text(
                    "2023-2024 GAPS, India",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
