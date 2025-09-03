import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/themes/app_text_styles.dart';

class CustomArticlesListView extends StatelessWidget {
  const CustomArticlesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          title: Text(
            'head article title ',
            style: AppTextStyle.styleSemiBold18(context),
          ),
          subtitle: Row(
            children: [
              Text('Author name', style: AppTextStyle.styleRegular12(context)),
              Text('May 1, 2025', style: AppTextStyle.styleRegular12(context)),
            ],
          ),
          trailing: SizedBox(
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpuz18BdRbDxEi0_YA3Q9zXq90dTKHKM0WDUZQKZe0DKLQ8jlxZqROkXE&s',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ),
        );
      },
    );
  }
}
