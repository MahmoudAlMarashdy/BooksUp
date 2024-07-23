import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';
import 'newest_book_item.dart';

class NewestBooksList extends StatelessWidget {
  const NewestBooksList({super.key, required this.books});

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: books.length,
        itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: NewestBookItem(
                image: books[index].bookImage?? '',
                title: books[index].bookTitle?? '',
                author: books[index].bookAuthor?? '',
              ),
            )
            );
  }
}
