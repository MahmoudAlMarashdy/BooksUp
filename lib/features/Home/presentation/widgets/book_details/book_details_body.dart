import 'package:books_up/core/utils/styles.dart';
import 'package:books_up/features/Home/presentation/widgets/book_details/book_details_appbar.dart';
import 'package:books_up/features/Home/presentation/widgets/book_details/book_details_button.dart';
import 'package:books_up/features/Home/presentation/widgets/book_details/book_details_image.dart';
import 'package:books_up/features/Home/presentation/widgets/book_details/book_details_rating.dart';
import 'package:books_up/features/Home/presentation/widgets/similar_books/similar_books_list.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: NeverScrollableScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsAppBar(),
              BooksDetailsSection(),
              Expanded(child: SizedBox(height: 50,)),
              SimilarBooksSection(),
            ],
          ),
        )
      ],
    );
  }
}

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.28 , vertical: 10),
          child: const BookDetailsImage(),
        ),
        const SizedBox(height: 10,),
        const Text("Book's Name",style: Styles.titleLarge),
        const Text("Book's Author",style: Styles.titleMedium),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
        const SizedBox(height: 20,),
        const BookAction(),
      ],
    );
  }
}

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("You can also like",style: Styles.titleSmall),
            )
        ),
        SizedBox(height: 20,),
        SimilarBooksList(),
      ],
    );
  }
}


