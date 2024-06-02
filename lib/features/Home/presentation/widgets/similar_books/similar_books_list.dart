import 'package:books_up/features/Home/presentation/widgets/similar_books/similar_books_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SimilarBooksItem(),
          );
        },
      ),
    );
  }
}
