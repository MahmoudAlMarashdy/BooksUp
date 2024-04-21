import 'package:books_up/core/utils/assets.dart';
import 'package:books_up/core/utils/styles.dart';
import 'package:books_up/features/Home/screens/widgets/featured_book_item.dart';
import 'package:books_up/features/Home/screens/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_Appbar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksList(),
          SizedBox(height: 20,),
          Text("Best Seller",style: Styles.titleMedium,),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: BestSellerItem(),
          ),
        ],
      ),
    );
  }
}

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
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
