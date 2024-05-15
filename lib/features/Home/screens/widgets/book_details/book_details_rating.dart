import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: 8,),
        Text("4.8",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
        SizedBox(width: 8,),
        Text("(251)",style: TextStyle(fontSize: 18,),)
      ],
    );
  }
}