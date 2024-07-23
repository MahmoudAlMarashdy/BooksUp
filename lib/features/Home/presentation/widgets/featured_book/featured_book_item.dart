import 'package:books_up/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({super.key, required this.image});
  
  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: CachedNetworkImage(
          imageUrl: image,
          placeholder: (context, url) => Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Icon(Icons.error),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
