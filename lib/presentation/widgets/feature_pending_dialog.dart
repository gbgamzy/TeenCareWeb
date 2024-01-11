import 'package:flutter/material.dart';

Future<void> showFeaturePendingDialog(
    {required BuildContext context, String featureName="This Feature"}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('This Feature is under Making'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('$featureName is not yet Implemented'),
              const Text('Come check for this at a later time!'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Okay'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}