import 'package:airdroid/data/model/feedback_data_model.dart';
import 'package:flutter/material.dart';

class FeedbackCard extends StatelessWidget {
  final double width;
  final double height;
  final FeedbackDataModel dataModel;

  const FeedbackCard({
    super.key,
    required this.width,
    required this.height,
    required this.dataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0109375*width),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 0.2623958333*width,
          maxHeight: 0.6119791667*height,
        ),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0.0161458*width, 0.033*height,0.0161458*width,0),
                child: Text(
                  dataModel.description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF223E6A)
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0161*width,0,0,0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(dataModel.imageUrl),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0078125*width, 0,0,0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          dataModel.name
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,0,0,0.05338*height),
                          child: Row(
                            children: [
                              for(var i=0; i<dataModel.rating;i++)
                                const Icon(Icons.star)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
