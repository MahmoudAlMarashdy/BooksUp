import 'package:flutter/material.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.close),
          onPressed: (){},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: (){},
        ),
      ],
    );
  }
}