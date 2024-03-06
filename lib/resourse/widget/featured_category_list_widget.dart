import 'package:flutter/material.dart';
import 'package:project_structure/model/blog_info.dart';
import 'package:project_structure/resourse/widget/post_card_widget.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 6/3/24
 */

class FeaturedCategoryList extends StatefulWidget {
  @override
  _FeaturedCategoryListState createState() => _FeaturedCategoryListState();
}

class _FeaturedCategoryListState extends State<FeaturedCategoryList> with AutomaticKeepAliveClientMixin {
  List<BlogInfo> posts = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    // WpApi.getPostsList(category: FEATURED_CATEGORY_ID).then((_posts) {
      setState(() {
        isLoading = false;
        posts.add(BlogInfo("1", "title 1", "date", "category", "imageUrl", "details", "star", "name", []));
        posts.add(BlogInfo("2", "title 2", "date", "category", "imageUrl", "details", "star", "name", []));
        posts.add(BlogInfo("id", "title 3", "date", "category", "imageUrl", "details", "star", "name", []));
        posts.add(BlogInfo("id", "title 4", "date", "category", "imageUrl", "details", "star", "name", []));

      });
    // });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return isLoading
        ? Center(
      child: CircularProgressIndicator(),
    )
        : ListView.builder(
      itemCount: posts?.length ?? 0,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
//            physics: ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        return PostCard(posts[index], isFeaturedList: true);
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}