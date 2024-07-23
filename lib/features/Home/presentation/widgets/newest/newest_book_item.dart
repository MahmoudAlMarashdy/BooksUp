import 'package:books_up/core/utils/app_router.dart';
import 'package:books_up/core/utils/assets.dart';
import 'package:books_up/features/Home/presentation/widgets/book_details/book_details_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBookItem extends StatelessWidget {
  const NewestBookItem({super.key, required this.image, required this.title, required this.author});

  final String image;
  final String title;
  final String author;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.bookDetails),
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CachedNetworkImage(
                  imageUrl: image,
                    placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    author,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99 €",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      BookRating(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
