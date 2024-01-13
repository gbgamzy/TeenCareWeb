import 'package:airdroid/constants/misc.dart';
import 'package:flutter/material.dart';

Future<void> showFeaturePendingDialog(
    {required BuildContext context, String featureName=thisFeature}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(pendingTitle),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('$featureName is not yet Implemented'),
              const Text(pendingDescription),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(pendingButtonText),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}