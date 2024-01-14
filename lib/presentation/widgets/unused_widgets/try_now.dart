import 'package:teencare/presentation/widgets/button.dart';
import 'package:flutter/material.dart';

class TryNow extends StatelessWidget {
  final double width;
  final double height;

  const TryNow({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.23, 0.9],
          colors: [
            Color.fromRGBO(68, 110, 252, 0.1),
            Color.fromRGBO(192, 255, 231, 0.23),

          ],
        ),
      ),
      height: 0.4791666667 * height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/mobileUi.png", height: double.infinity,),
          Padding(
            padding:  EdgeInsets.fromLTRB(0.041667*width,0,0,0),
            child: SizedBox(
              width: 0.3515625 * width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Make Parenting Easier with teencare Parental Control",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                        title: "Try It Free",
                        color: const Color(0xFF446EFC),
                        onPressed: () {},
                        textColor: Colors.white,
                        width: width,
                        height: height,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(0.01541666667 * width, 0, 0, 0),
                        child: Button(
                          title: "Buy Now",
                          color: Colors.white,
                          onPressed: () {},
                          textColor: const Color(0xFF216CE0),
                          width: width,
                          height: height,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,0.026041*height,0,0),
                    child: const Row(
                      children: [
                        Icon(Icons.thumb_up_alt),
                        Text(
                          "1,628,673 parents have downloaded it!",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
