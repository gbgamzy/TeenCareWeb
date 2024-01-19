import 'dart:ui';
import 'package:teencare/data/model/feature_data.dart';
import 'package:teencare/data/model/tile_data_model.dart';

const featureData = <FeatureData>[
  FeatureData(
    bubbleTitle: "Monitor",
    featureTitle: "24/7 Remotely Safety Monitoring",
    bubbleColor: Color(0xFFCCEFDB),
    bubbleTextColor: Color(0xFF01B04E),
    imagePath: "assets/images/feature1.png",
    list: <TileDataModel>[
      TileDataModel(
        title: "Screen Mirroring",
        subTitle:
            "Get the shared screen from your kids' phones, which can stop them from potential risks in real-time.",
      ),
      TileDataModel(
          title: "Sync App Notifications",
          subTitle:
              "Synchronously receiving the applications notifications from your kids' phones, such as WhatsApp, Facebook, Snapchat, etc."),
      TileDataModel(
          title: "Remote Camera",
          subTitle:
              "Remotely turn on the kid's rear/front camera to ensure your kids' safety without following them anywhere, anytime."),
      TileDataModel(
        title: "One-Way Audio",
        subTitle:
            "Listen to the environment through the microphones of your kid's device. When necessary, you can even record the voice of the kid's side for future use.",
      ),
      TileDataModel(
        title: "Social Content Detection",
        subTitle:
            "Set up keywords on teencare Parental Control to detect harmful content on social media like Instagram, Facebook, YouTube, WhatsApp, etc. It enables an alert function when your kids are potentially facing dangers and cyberbullying.",
      ),
    ],
  ),
  FeatureData(
      bubbleTitle: "Locate",
      featureTitle: "Instant Location Tracking",
      bubbleColor: Color(0xFFD9E2FE),
      bubbleTextColor: Color(0xFF446EFC),
      imagePath: "assets/images/feature2.png",
      list: <TileDataModel>[
        TileDataModel(
          title: "Real-time Locator", 
          subTitle: "See your child's real-time location at any time on the map, find a lost device, or coordinate a pickup.",
        ),
        TileDataModel(
          title: "Route History", 
          subTitle: "View kids' location history by timeline. Learn about the places your kids have been frequently.",
        ),
        TileDataModel(
            title: "Geofencing",
          subTitle: "Set up geofencing around the school, a park, grandma's house, etc., and get alerts when your child enters or leaves these zones.",
        ),
      ],
  ),
  FeatureData(
      bubbleTitle: "Limit",
      featureTitle: "Time Limit Scheduling & Supervision",
      bubbleColor: Color(0xFFE6DBFD),
      bubbleTextColor: Color(0xFF864DF7),
      imagePath: "assets/images/feature3.png",
      list: <TileDataModel>[
        TileDataModel(
            title: "App Time Limits",
            subTitle: "Set available time limits or timespan for distracting social media, and entertainment apps to help kids stay focused, blocking access after a set time.",
        ),
        TileDataModel(
          title: "Screen Time Limits",
          subTitle: "Set screen control timers to automatically disable apps when the screen time limit is reached.",
        )
      ],
  ),
  FeatureData(
      bubbleTitle: "Protect",
      featureTitle: "Safeguard Your Kids All-Around with Ease",
      bubbleColor: Color(0xFFFFE7CC),
      bubbleTextColor: Color(0xFFFF8B00),
      imagePath: "assets/images/feature4.png",
      list: <TileDataModel>[
        TileDataModel(
            title: "Activity Report",
            subTitle: "Get full details of kids' daily/weekly phone usage and their favorites from an intuitive dashboard. Reasonably adjust your settings to prevent children from digital addiction.",
        ),
        TileDataModel(
            title: "Instant Alerts",
            subTitle: "Get real-time alerts of low battery, device offline, when your children try to open blocked apps or games, and reach/leave geofences.",
        ),
      ],
  )
];


const faq = <TileDataModel>[
  TileDataModel(
    title: "Screen Mirroring",
    subTitle:
    "Get the shared screen from your kids' phones, which can stop them from potential risks in real-time.",
  ),
  TileDataModel(
      title: "Sync App Notifications",
      subTitle:
      "Synchronously receiving the applications notifications from your kids' phones, such as WhatsApp, Facebook, Snapchat, etc."),
  TileDataModel(
      title: "Remote Camera",
      subTitle:
      "Remotely turn on the kid's rear/front camera to ensure your kids' safety without following them anywhere, anytime."),
  TileDataModel(
    title: "One-Way Audio",
    subTitle:
    "Listen to the environment through the microphones of your kid's device. When necessary, you can even record the voice of the kid's side for future use.",
  ),
  TileDataModel(
    title: "Social Content Detection",
    subTitle:
    "Set up keywords on teencare Parental Control to detect harmful content on social media like Instagram, Facebook, YouTube, WhatsApp, etc. It enables an alert function when your kids are potentially facing dangers and cyberbullying.",
  ),
];
