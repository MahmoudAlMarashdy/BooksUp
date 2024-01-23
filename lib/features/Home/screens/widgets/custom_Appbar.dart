import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 40,),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}