import 'package:flutter/material.dart';
import 'package:project_structure/model/blog_info.dart';
import 'package:project_structure/resourse/widget/online_image_widget.dart';
import 'package:project_structure/screen/blog_details/post_details.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 5/3/24
 */
class PostListItem extends StatelessWidget {
  final BlogInfo blogInfo;

  PostListItem(this.blogInfo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetails(blogInfo)));
        },
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: OnlineImageWidget(
                  blogInfo.imageUrl!,
                  width: 100,
                  height: 85,
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 85.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      blogInfo.title!,
                      textAlign: TextAlign.left,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1, //TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0, fontFamily: 'Roboto'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(blogInfo.date!),
                        Expanded(
                          child: Text(
                            blogInfo.category!,
                            textAlign: TextAlign.end,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
