import 'dart:ui';

import 'package:teencare/data/model/tile_data_model.dart';

class FeatureData {
  final String bubbleTitle;
  final String featureTitle;
  final Color bubbleColor;
  final Color bubbleTextColor;
  final String imagePath;
  final List<TileDataModel> list;

  const FeatureData({
    required this.bubbleTitle,
    required this.featureTitle,
    required this.bubbleColor,
    required this.bubbleTextColor,
    required this.imagePath,
    required this.list,
  });
}
