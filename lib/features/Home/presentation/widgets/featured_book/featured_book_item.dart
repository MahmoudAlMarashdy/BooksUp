import 'package:books_up/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetsData.bookImg1)),
        ),
      ),
    );
  }
}
