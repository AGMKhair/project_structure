import 'package:flutter/material.dart';
import 'package:project_structure/resourse/style/size_manager.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 9/3/24
 */
 class ManualStep extends StatelessWidget {
   const ManualStep({super.key});

   @override
   Widget build(BuildContext context) {
     return orderTimeLine();
   }

   Widget orderTimeLine() {
     return Container(
       decoration: BoxDecoration(color: Colors.white),
       margin: EdgeInsets.only(
         bottom: SizeManager.margin_10 * 3,
       ),
       padding: EdgeInsets.only(
         top: SizeManager.margin_10 * 3,
         left: SizeManager.margin_10 * 7,
         bottom: SizeManager.margin_10 * 3,
       ),
       child: Column(
         children: <Widget>[
           timelineRow("Order Confirmed", "orderDateTime"),
           timelineRow("Order Inprocess", "orderDateTime"),
           timelineRow("Order Processed", ""),
           timelineRow("Order Shipped", ""),
           timelineLastRow("Order Delivered", ""),
         ],
       ),
     );
   }

   Widget timelineRow(String title, String subTile) {
     return Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: <Widget>[
         Expanded(
           flex: 1,
           child: Column(
             // mainAxisAlignment: MainAxisAlignment.start,
             mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Container(
                 width: 18,
                 height: 18,
                 decoration: new BoxDecoration(
                   color: Colors.green,
                   shape: BoxShape.circle,
                 ),
                 child: Text(""),
               ),
               Container(
                 width: 3,
                 height: 50,
                 decoration: new BoxDecoration(
                   color: Colors.green,
                   shape: BoxShape.rectangle,
                 ),
                 child: Text(""),
               ),
             ],
           ),
         ),
         Expanded(
           flex: 9,
           child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
             mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Text('${title}\n ${subTile}',
                   style: TextStyle(
                       fontFamily: "regular",
                       fontSize: 14,
                       color: Colors.black54)),
             ],
           ),
         ),
       ],
     );
   }
   Widget timelineLastRow(String title, String subTile) {
     return Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: <Widget>[
         Expanded(
           flex: 1,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             mainAxisSize: MainAxisSize.max,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Container(
                 width: 18,
                 height: 18,
                 decoration: new BoxDecoration(
                   color: Colors.green,
                   shape: BoxShape.circle,
                 ),
                 child: Text(""),
               ),
               Container(
                 width: 3,
                 height: 20,
                 decoration: new BoxDecoration(
                   color: Colors.transparent,
                   shape: BoxShape.rectangle,
                 ),
                 child: Text(""),
               ),
             ],
           ),
         ),
         Expanded(
           flex: 9,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             mainAxisSize: MainAxisSize.max,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Text('${title}\n ${subTile}',
                   style: TextStyle(
                       fontFamily: "regular",
                       fontSize: 14,
                       color: Colors.black54)),
             ],
           ),
         ),
       ],
     );
   }
 }
