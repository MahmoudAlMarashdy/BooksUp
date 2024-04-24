import 'package:flutter/material.dart';

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
          Column(
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
                children: [
                  Text("19.99 €",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}