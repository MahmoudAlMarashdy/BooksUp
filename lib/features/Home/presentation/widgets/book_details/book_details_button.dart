import 'package:books_up/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      child: Row(
        children: [
          const Expanded(
              child: BookDetailsButton(
            backGroundColor: Colors.white,
            text: "19.99 \$",
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          )),
          Expanded(
              child: BookDetailsButton(
            backGroundColor: Colors.redAccent.shade100,
            text: "Free Preview",
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          )),
        ],
      ),
    );
  }
}

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton(
      {super.key,
      required this.backGroundColor,
      required this.textColor,
      required this.text,
      this.borderRadius});

  final Color backGroundColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.zero)),
      child: Text(
        text,
        style: Styles.titleMedium.copyWith(color: textColor),
      ),
    );
  }
}
