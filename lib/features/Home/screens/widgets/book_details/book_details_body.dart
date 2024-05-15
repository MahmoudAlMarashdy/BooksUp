import 'package:books_up/core/utils/styles.dart';
import 'package:books_up/features/Home/screens/widgets/best_seller/best_seller_item.dart';
import 'package:books_up/features/Home/screens/widgets/book_details/book_details_appbar.dart';
import 'package:books_up/features/Home/screens/widgets/book_details/book_details_image.dart';
import 'package:books_up/features/Home/screens/widgets/book_details/book_details_rating.dart';
import 'package:books_up/features/Home/screens/widgets/featured_book/featured_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        BookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.25 , vertical: 10),
          child: BookDetailsImage(),
        ),
        SizedBox(height: 10,),
        Text("Book's Name",style: Styles.titleLarge),
        Text("Book's Name",style: Styles.titleMedium),
        BookRating(mainAxisAlignment: MainAxisAlignment.center,),
      ],
    );
  }
}



