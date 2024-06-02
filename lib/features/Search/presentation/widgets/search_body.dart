import 'package:books_up/core/utils/styles.dart';
import 'package:books_up/features/Search/presentation/widgets/search_results_list.dart';
import 'package:books_up/features/Search/presentation/widgets/search_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchTextField(),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Search Results",
                style: Styles.titleMedium,
              )),
        ),
        Expanded(child: SearchResultList()),
      ],
    );
  }
}
