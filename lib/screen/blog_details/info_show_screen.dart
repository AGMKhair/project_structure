import 'package:flutter/material.dart';
import 'package:project_structure/resourse/widget/accent_button_widget.dart';
import 'package:project_structure/resourse/widget/post_list_widget.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 7/3/24
 */

class InfoShowScreen extends StatefulWidget {
  const InfoShowScreen({super.key});

  @override
  State<InfoShowScreen> createState() => _InfoShowScreenState();
}

class _InfoShowScreenState extends State<InfoShowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // ListHeading(CommonUtil.FEATURED_CATEGORY_TITLE, CommonUtil.FEATURED_CATEGORY_ID),
            Container(
              height: 250.0,
              child: AccentButton(label: 'Test', onPressed: () {  },),
            ),
            // ListHeading('Latest', 0),
            Flexible(
              fit: FlexFit.loose,
              child: PostsList(),
            ),
          ],
        ),
      ),
    );
  }
}
