import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:project_structure/architecture/routes/routes.dart';
import 'package:project_structure/resourse/widget/primary_button_widget.dart';
import 'package:project_structure/screen/nev_bar/two_screen.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 21/2/24
 */
 class OneScreen extends StatelessWidget {
   const OneScreen({super.key});


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
               const Text('One Screen' , textAlign: TextAlign.center,),
               PrimaryButton(label: 'Next Screen', isDisabled: false,onPressed: (){
                 PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
                   context,
                   settings: RouteSettings(name: Routes.twoScreen),
                   screen: TwoScreen(),
                   withNavBar: true,
                   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                 );
               },),
               PrimaryButton(label: 'Previous Screen', isDisabled: false,onPressed: (){
                 Navigator.of(context).pop(ModalRoute.withName(Routes.homeScreen));
                 // Navigator.of(context).popUntil(ModalRoute.withName(Routes.homeScreen));
               },),
             ],
           ),
         ),
       ),
     );
   }
 }
