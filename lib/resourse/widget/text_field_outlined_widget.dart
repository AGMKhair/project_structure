import 'package:flutter/material.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 1/2/24
 */
 class TextFieldOutlineWidget extends StatefulWidget {
   const TextFieldOutlineWidget({super.key});

   @override
   State<TextFieldOutlineWidget> createState() => _TextFieldOutlineWidgetState();
 }

 class _TextFieldOutlineWidgetState extends State<TextFieldOutlineWidget> {
   @override
   Widget build(BuildContext context) {
     return Container(
       child: TextFormField(
         initialValue: 'Input text',
         decoration: InputDecoration(
           labelText: 'Label text',
           errorText: 'Error message',
           border: OutlineInputBorder(),
           suffixIcon: Icon(
             Icons.error,
           ),
         ),
       ),
     );
   }
 }
