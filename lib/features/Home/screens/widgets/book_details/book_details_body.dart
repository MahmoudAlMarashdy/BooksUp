import 'package:books_up/core/utils/styles.dart';
import 'package:books_up/features/Home/screens/widgets/best_seller/best_seller_item.dart';
import 'package:books_up/features/Home/screens/widgets/book_details/book_details_appbar.dart';
import 'package:books_up/features/Home/screens/widgets/book_details/book_details_button.dart';
import 'package:books_up/features/Home/screens/widgets/book_details/book_details_image.dart';
import 'package:books_up/features/Home/screens/widgets/book_details/book_details_rating.dart';
import 'package:books_up/features/Home/screens/widgets/featured_book/featured_book_item.dart';
import 'package:books_up/features/Home/screens/widgets/similar_books/similar_books_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
          child: BookDetailsImage(),
        ),
        SizedBox(height: 10,),
        Text("Book's Name",style: Styles.titleLarge),
        Text("Book's Author",style: Styles.titleMedium),
        BookRating(mainAxisAlignment: MainAxisAlignment.center,),
        SizedBox(height: 20,),
        BookAction(),
      ],
    );
  }
}

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("You can also like",style: Styles.titleSmall),
            )
        ),
        SizedBox(height: 20,),
        SimilarBooksList(),
      ],
    );
  }
}


