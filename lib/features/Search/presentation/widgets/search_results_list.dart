import 'package:books_up/features/Search/presentation/widgets/search_result_item.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: SearchResultItem(),
        )
    );
  }
}
