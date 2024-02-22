import 'package:flutter/material.dart';
import 'package:project_structure/resourse/widget/primary_button_widget.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 21/2/24
 */
 class FourScreen extends StatelessWidget {
   const FourScreen({super.key});

   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         appBar: AppBar(
           title: const Text("Test Project"),
         ),
         body: Center(
           child: Column(
             children: [
               const Text('Four Screen' , textAlign: TextAlign.center,),
               PrimaryButton(label: 'Next Screen', isDisabled: false,onPressed: (){

               },),
               PrimaryButton(label: 'Previous Screen', isDisabled: false,onPressed: (){

               },),
             ],
           ),
         ),
       ),
     );
   }
 }
