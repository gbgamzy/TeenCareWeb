import 'package:teencare/presentation/widgets/feature_pending_dialog.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double width;
  final double height;

  const Header({
    super.key,
    required this.width,
    required this.height,
  });

  final textStyle = const TextStyle(fontSize: 15, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.073125 * height,
      width: width,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.061458 * width, 20, 0, 0),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0.0205208 * width, 0),
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.fitHeight,
              ),
            ),
            Text(
              "TeenCare",
              style: textStyle,
            ),
            VerticalDivider(
              width: 0.078125 * height,
              thickness: 1,
              indent: 10,
              endIndent: 10,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.02083333333 * width),
              child: InkWell(
                onTap: (){
                  showFeaturePendingDialog(
                      context:context,
                      featureName: "Download",
                  );
                },
                child: Text(
                  "Download",
                  style: textStyle,
                ),
              ),
            ),
            InkWell(
              onTap: (){
                showFeaturePendingDialog(
                  context: context,
                  featureName: "Pricing",
                );
              },
              child: Text(
                "Pricing",
                style: textStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.02083333333 * width),
              child: InkWell(
                onTap: (){
                  showFeaturePendingDialog(
                    context: context,
                  );
                },
                child: Text(
                  "How To",
                  style: textStyle,
                ),
              ),
            ),
            InkWell(
              onTap: (){
                showFeaturePendingDialog(context: context);
              },
              child: Text(
                "About Us",
                style: textStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.02083333333 * width),
              child: InkWell(
                onTap: (){
                  // Navigator.pushNamed(context, "/pdf");
                  showFeaturePendingDialog(context: context);
                },
                child: Text(
                  "Privacy",
                  style: textStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
