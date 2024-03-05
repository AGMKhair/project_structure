import 'package:flutter/material.dart';
import 'package:project_structure/model/blog_info.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 6/3/24
 */

class CategoryPill extends StatelessWidget {
  const CategoryPill({
    Key? key,
    required this.post,
  }) : super(key: key);

  final BlogInfo post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Opacity(
        opacity: 0.8,
        child: MaterialButton(
          height: 26.0,
          onPressed: () {},
          color: Theme.of(context).primaryColor,
          child: Text(post.category!.toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              )),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }
}
