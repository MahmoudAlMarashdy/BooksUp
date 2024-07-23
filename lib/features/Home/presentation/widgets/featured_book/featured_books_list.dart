import 'package:books_up/features/Home/presentation/widgets/featured_book/featured_book_item.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key, required this.books});

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: FeaturedBookItem(
              image: books[index].bookImage ?? '',
            ),
          );
        },
      ),
    );
  }
}
