import 'package:flutter/material.dart';
import 'package:project_structure/resourse/widget/loading_widget.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 4/2/24
 */
class Wrapper extends StatefulWidget {
  Widget child;
  bool isLoading;
  Wrapper({super.key, required this.child, this.isLoading = false});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if(widget.isLoading)
        Container(child: LoadingWidget(),),
        Positioned(child: Padding(
          padding: const EdgeInsets.all(10),
          child: widget.child,
        ),)
      ],
    );
  }
}
