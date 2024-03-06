import 'package:flutter/material.dart';
import 'package:project_structure/architecture/base/basic_mixin.dart';
import 'package:project_structure/model/blog_category_info.dart';
import 'package:project_structure/resourse/widget/post_list_widget.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 6/3/24
 */

class SingleCategory extends StatelessWidget with BasicMixin{
  BlogCategoryInfo category;

  SingleCategory(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: textDirection,
      child: Scaffold(
        appBar: AppBar(
          title: Text(category.name!),
        ),
        body: PostsList(category: category.id!),
      ),
    );
  }
}