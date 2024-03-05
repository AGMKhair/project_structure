import 'package:flutter/material.dart';
import 'package:project_structure/model/blog_info.dart';
import 'package:project_structure/resourse/widget/online_image_widget.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 6/3/24
 */
class Author extends StatelessWidget {
  const Author({
    Key? key,
    required this.post,
  }) : super(key: key);

  final BlogInfo post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: OnlineImageWidget(
              post.imageUrl!,
              height: 26.0,
              width: 26.0,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 8.0),
            child: Text(
              post.name!,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 5.0,
                    color: Colors.black,
                  ),
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 8.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}