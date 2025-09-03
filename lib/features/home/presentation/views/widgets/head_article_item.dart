import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/themes/app_text_styles.dart';

class HeadArticleItem extends StatelessWidget {
  const HeadArticleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),

          child: CachedNetworkImage(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpuz18BdRbDxEi0_YA3Q9zXq90dTKHKM0WDUZQKZe0DKLQ8jlxZqROkXE&s',
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.20,
            fit: BoxFit.fill,
          ),
        ),

        Text(
          'head article title ',
          style: AppTextStyle.styleSemiBold18(context),
        ),

        Row(
          children: [
            Text('Author name', style: AppTextStyle.styleRegular12(context)),
            Text('May 1, 2025', style: AppTextStyle.styleRegular12(context)),
          ],
        ),
      ],
    );
  }
}
