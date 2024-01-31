import 'package:flutter/material.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 1/2/24
 */
class ButtonOutlinedWidget extends StatelessWidget {
  String? title;
  Icons? icons;
  Function onClick;
  ButtonOutlinedWidget({super.key, this.title = "Submit", this.icons,required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (icons == null)
          ? OutlinedButton(
              onPressed: () {
                onClick();
              },
              child: Text("$title"),
            )
          : OutlinedButton.icon(
              onPressed: () {
                onClick();
              },
              icon: Icon(Icons.add, size: 18),
              label: Text("$title"),
            ),
    );
  }
}
