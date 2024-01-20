// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:teencare/constants/misc.dart';
import 'package:flutter/material.dart';

Future<void> showFeaturePendingDialog(
    {required BuildContext context, String featureName = thisFeature}) async {
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

Future<void> showContactsDialog({required BuildContext context}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Contact us"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              const Text("Email: $supportEmail"),
              // const Text("Phone: $supportPhone"),
              const Text("Address: $address"),
              
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

// terms and conditions dialog
Future<void> showTermsDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(termsTitle),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              const Text(
                termsHeading1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(termsHeading1Description),
              const Text(
                termsHeading2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(termsHeading2Description),
              const Text(
                termsHeading3,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(termsHeading3Description),
              const Text(
                termsHeading4,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(termsHeading4Description),
              const Text(
                termsHeading5,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(termsHeading5Description),
              const Text(
                termsHeading6,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(termsHeading6Description),
              const Text(
                termsHeading7,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(termsHeading7Description),
              const Text(
                termsHeading8,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(termsHeading8Description),
              const Text(
                termsHeading9,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(termsHeading9Description),

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

// privacy policy dialog
void showPrivacyDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(privacyTitle),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              const Text(
                privacyHeading1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(privacyHeading1Description),
              const Text(
                privacyHeading2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(privacyHeading2Description),
              const Text(
                privacyHeading3,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(privacyHeading3Description),
              const Text(
                privacyHeading4,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(privacyHeading4Description),
              const Text(
                privacyHeading5,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(privacyHeading5Description),
              const Text(
                privacyHeading6,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(privacyHeading6Description),
              const Text(
                privacyHeading7,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(privacyHeading7Description),
              const Text(
                privacyHeading8,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(privacyHeading8Description),
              const Text(
                privacyHeading9,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(privacyHeading9Description),
              const Text(
                privacyHeading10,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(privacyHeading10Description),
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

void showPaymentPolicyDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(paymentTitle),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              const Text(
                paymentHeading1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(paymentHeading1Description),
              const Text(
                paymentHeading2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(paymentHeading2Description),
              const Text(
                paymentHeading3,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(paymentHeading3Description),
              const Text(
                paymentHeading4,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(paymentHeading4Description),
              const Text(
                paymentHeading5,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(paymentHeading5Description),
              const Text(
                paymentHeading6,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(paymentHeading6Description),
              const Text(
                paymentHeading7,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(paymentHeading7Description),
              const Text(
                paymentHeading8,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(paymentHeading8Description),
              const Text(
                paymentHeading9,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(paymentHeading9Description),
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

void showAboutUsDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(aboutHeading1),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              
              const Text(aboutHeading1Description),
              const Text(
                aboutHeading2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(aboutHeading2Description),
              const Text(
                aboutHeading3,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(aboutHeading3Description),
              const Text(
                aboutHeading4,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(aboutHeading4Description),
              const Text(
                aboutHeading5,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(aboutHeading5Description),
              const Text(
                aboutHeading6,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(aboutHeading6Description),
              const Text(
                aboutHeading7,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
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