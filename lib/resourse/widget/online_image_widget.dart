import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project_structure/resourse/util/business_dictionary.dart';

class OnlineImageWidget extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;

  const OnlineImageWidget(this.url, {super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width,
      height: height,
      imageUrl: url ?? '',
      fit: BoxFit.cover,
      placeholder: (_, __) => Image.asset(
        'images/placeholder.jpg',
        width: width,
        height: height,
      ),
    );
  }
}