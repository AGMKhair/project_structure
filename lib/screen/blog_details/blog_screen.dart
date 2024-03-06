import 'package:flutter/material.dart';
import 'package:project_structure/architecture/base/basic_mixin.dart';
import 'package:project_structure/resourse/util/common_util.dart';
import 'package:project_structure/resourse/widget/featured_category_list_widget.dart';
import 'package:project_structure/resourse/widget/list_heading_widget.dart';
import 'package:project_structure/resourse/widget/post_list_widget.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 6/3/24
 */

class BlogScreen extends StatelessWidget with BasicMixin{
   BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListHeading(CommonUtil.FEATURED_CATEGORY_TITLE, CommonUtil.FEATURED_CATEGORY_ID),
            Container(
              height: 250.0,
              child: FeaturedCategoryList(),
            ),
            ListHeading('Latest', 0),
            Flexible(
              fit: FlexFit.loose,
              child: PostsList(),
            ),
          ],
        ),
      ),
    );
  }
}