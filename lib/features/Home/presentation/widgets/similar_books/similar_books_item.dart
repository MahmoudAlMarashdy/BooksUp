import 'package:books_up/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetsData.bookImg1)),
        ),
      ),
    );
  }
}
