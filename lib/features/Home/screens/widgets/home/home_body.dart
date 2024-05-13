import 'package:books_up/core/utils/assets.dart';
import 'package:books_up/core/utils/styles.dart';
import 'package:books_up/features/Home/screens/widgets/best_seller/best_seller_listview.dart';
import 'package:books_up/features/Home/screens/widgets/featured_book/featured_book_item.dart';
import 'package:books_up/features/Home/screens/widgets/featured_book/featured_books_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../best_seller/best_seller_item.dart';
import 'home_appbar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              FeaturedBooksList(),
              SizedBox(height: 20,),
              Text("Best Seller",style: Styles.titleMedium,),
              SizedBox(height: 20,),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        )
      ],
    );
  }
}