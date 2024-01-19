import 'package:teencare/constants/feature_data.dart';
import 'package:teencare/constants/misc.dart';
import 'package:teencare/presentation/widgets/child_help.dart';
import 'package:teencare/presentation/widgets/custom_drawer_header.dart';
import 'package:teencare/presentation/widgets/faq.dart';
import 'package:teencare/presentation/widgets/feature_component.dart';
import 'package:teencare/presentation/widgets/feature_pending_dialog.dart';
import 'package:teencare/presentation/widgets/footer.dart';
import 'package:teencare/presentation/widgets/top_section.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  final String dialogToShow;
  const LandingPage({Key? key, this.dialogToShow = ""}) : super(key: key);


  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {

    print(widget.dialogToShow);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      switch (widget.dialogToShow) {
        case "privacyPolicy":
          showPrivacyDialog(context);
          break;
        case "termsAndConditions":
          showTermsDialog(context);
          break;
        case "contacts":
          showContactsDialog(context: context);
          break;
        case "paymentPolicy":
          showPaymentPolicyDialog(context);
          break;

        default:
      }
    });
    
    super.initState();
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: (size.width < 768)
            ? AppBar(
                title: Row(
                  children: [
                    Image.asset(
                      "assets/images/favicon.png",
                      height: 0.09571875 * size.height,
                    ),
                    const Text(title)
                  ],
                ),
                toolbarHeight: 0.08571875 * size.height,
              )
            : null,
        drawer: (size.width < 768)
            ? Drawer(
                backgroundColor: const Color(0xFFCCEFDB),
                elevation: 5,
                child: ListView(
                  children: [
                    CustomDrawerHeader(width: size.width, height: size.height),
                    Column(
                      children: [
                        ListTile(
                          title: const Text(listTile1),
                          selectedColor: const Color(0xFF01B04E),
                          selected: _selectedIndex == 0,
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Text(listTile2),
                          selected: _selectedIndex == 1,
                          onTap: () {
                            Navigator.pop(context);
                            showFeaturePendingDialog(context: context);
                          },
                        ),
                        ListTile(
                          title: const Text(listTile3),
                          selected: _selectedIndex == 2,
                          onTap: () {
                            Navigator.pop(context);
                            showFeaturePendingDialog(context: context);
                          },
                        ),
                        ListTile(
                          title: const Text(listTile4),
                          selected: _selectedIndex == 3,
                          onTap: () {
                            Navigator.pop(context);
                            showFeaturePendingDialog(context: context);
                          },
                        ),
                        ListTile(
                          title: const Text(listTile5),
                          selected: _selectedIndex == 4,
                          onTap: () {
                            Navigator.pop(context);
                            showFeaturePendingDialog(context: context);
                          },
                        ),
                        ListTile(
                          title: const Text(listTile6),
                          selected: _selectedIndex == 5,
                          onTap: () {
                            Navigator.pop(context);
                            showFeaturePendingDialog(context: context);
                          },
                        )
                      ],
                    ),
                  ],
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopSection(
                width: size.width,
                height: size.height,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  0.09961 * size.height,
                  0,
                  0,
                ),
                child: Text(
                  tagLine,
                  style: TextStyle(
                    fontSize: (size.width < 768) ? 26 : 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              for (var i = 0; i < featureData.length; i++)
                FeatureComponent(
                  width: size.width,
                  reverse: i % 2 == 0,
                  featureData: featureData[i],
                ),
              ChildHelp(
                width: size.width,
                height: size.height,
              ),
              Faq(
                width: size.width,
                height: size.height,
              ),
              Footer(
                width: size.width,
                height: size.height,
              )
            ],
          ),
        ),
      ),
    );
  }
}
