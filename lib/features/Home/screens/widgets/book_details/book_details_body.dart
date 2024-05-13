import 'package:books_up/features/Home/screens/widgets/book_details/book_details_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookDetailsAppBar(),
      ],
    );
  }
}



