import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/assets.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7/4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.bookImg1)
                ),
              ),
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: Text("A Million To One",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),)
                ),
                SizedBox(height: 3,),
                Text("J.K Rowling",style: TextStyle(fontSize: 18,),),
                SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("19.99 €",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                    BookRating(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
