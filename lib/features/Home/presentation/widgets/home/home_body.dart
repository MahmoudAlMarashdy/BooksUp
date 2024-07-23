import 'package:books_up/core/utils/styles.dart';
import 'package:books_up/features/Home/presentation/widgets/featured_book/featured_books_list_bloc_builder.dart';
import 'package:books_up/features/Home/presentation/widgets/newest/newest_book_list.dart';
import 'package:books_up/features/Home/presentation/widgets/featured_book/featured_books_list.dart';
import 'package:books_up/features/Home/presentation/widgets/newest/newest_books_list_bloc_builder.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home_appbar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              FeatureBooksListBlocBuilder(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Newest Books",
                  style: Styles.titleMedium,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: NewestBooksListBlocBuilder(),
        )
      ],
    );
  }
}
