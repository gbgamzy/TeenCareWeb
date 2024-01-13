import 'package:airdroid/constants/misc.dart';
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
              aboutTitle,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              width: (width<768) ? width : 0.5815789474 * width,
              child: const Text(
                aboutDescription,
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
                          aboutCompanyTitle,
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
                            gapsTitle,
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
                            contactsTitle,
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
                            privacyTitle,
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
                            paymentTitle,
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
                        resourceTitle,
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
                          resourceLibraryTitle,
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
                          howToTitle,
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
                          blogTitle,
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
                          pricingTitle,
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
                          downloadTitle,
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
                    copyright,
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
