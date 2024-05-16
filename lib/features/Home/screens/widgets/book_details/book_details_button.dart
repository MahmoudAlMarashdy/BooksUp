import 'package:books_up/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({
    super.key,
    required this.backGroundColor,
    required this.textColor,
    required this.text,
    this.borderRadius
  });

  final Color backGroundColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: Text(text,style: Styles.titleMedium.copyWith(color: textColor),),
      style: TextButton.styleFrom(
        backgroundColor: backGroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.zero
        )
      ),
    );
  }
}
