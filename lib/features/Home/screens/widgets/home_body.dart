import 'package:books_up/core/utils/assets.dart';
import 'package:books_up/features/Home/screens/widgets/listview_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_Appbar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        ListViewItem(),
      ],
    );
  }
}



