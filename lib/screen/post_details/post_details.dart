import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:project_structure/architecture/base/basic_mixin.dart';
import 'package:project_structure/model/blog_info.dart';
import 'package:project_structure/resourse/style/style_manager.dart';
import 'package:project_structure/resourse/widget/author_widget.dart';
import 'package:project_structure/resourse/widget/category_pill_widget.dart';
import 'package:project_structure/resourse/widget/online_image_widget.dart';
/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 5/3/24
 */

class PostDetails extends StatelessWidget with BasicMixin{
  BlogInfo post;

  PostDetails(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
//    post.isDetailCard = true;
    return Directionality(
      textDirection: textDirection,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            Size size = MediaQuery.of(context).size;
            return <Widget>[
              SliverAppBar(
                iconTheme: IconThemeData(color: Colors.white),
                floating: true,
                expandedHeight: 300.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: <Widget>[
                      Hero(
                        tag: post.imageUrl!,
                        child: OnlineImageWidget(
                          width: size.width,
                          height: size.height,  post.imageUrl!,
                        ),
                      ),
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Colors.black, Colors.transparent],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Author(post: post),
                      ),
                      Positioned(
                        bottom: 35.0,
                        child: Container(
                            width: size.width,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    post.title!,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Positioned.directional(
                        textDirection: textDirection,
                        bottom: 0,
                        end: 0,
                        child: CategoryPill(post: post),
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Html(
                data: post.details!,
                style: {
                  'a' : Style(
                      color: Colors.blueAccent,
                      textDecoration: TextDecoration.underline,
                      textDecorationColor: Colors.blueAccent
                  )
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}