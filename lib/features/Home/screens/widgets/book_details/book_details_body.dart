import 'package:books_up/core/utils/styles.dart';
import 'package:books_up/features/Home/screens/widgets/best_seller/best_seller_item.dart';
import 'package:books_up/features/Home/screens/widgets/book_details/book_details_appbar.dart';
import 'package:books_up/features/Home/screens/widgets/book_details/book_details_button.dart';
import 'package:books_up/features/Home/screens/widgets/book_details/book_details_image.dart';
import 'package:books_up/features/Home/screens/widgets/book_details/book_details_rating.dart';
import 'package:books_up/features/Home/screens/widgets/featured_book/featured_book_item.dart';
import 'package:flutter/cupertino.dart';
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

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      child: Row(
        children: [
          Expanded(child: BookDetailsButton(
            backGroundColor: Colors.white,
            text: "19.99 \$",
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10)
            ),
          )),
          Expanded(child: BookDetailsButton(
            backGroundColor: Colors.redAccent.shade100,
            text: "Free Preview",
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10)
            ),
          )),
        ],
      ),
    );
  }
}


