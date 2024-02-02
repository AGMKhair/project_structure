import 'package:flutter/material.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 1/2/24
 */

class TextFieldOutlineWidget extends StatelessWidget {

  TextEditingController? controller;
  String label;
  bool readOnly;

  TextFieldOutlineWidget({
    super.key,
    this.controller,
    this.readOnly = false,
    this.label = 'Entry the value',
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        icon: Icon(Icons.add),
        prefixIcon: Icon(Icons.add),
        suffixIcon: Icon(
          Icons.abc,o 
        ),
      ),
    );
  }
}
