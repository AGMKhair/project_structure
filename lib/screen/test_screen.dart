import 'package:flutter/material.dart';
import 'package:project_structure/resourse/widget/button_outlined_widget.dart';
import 'package:project_structure/resourse/widget/text_field_outlined_widget.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 1/2/24
 */
class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ButtonOutlinedWidget(onClick: (){}),
             TextFieldOutlineWidget(),

          ],
        ),
      ),
    );
  }
}
