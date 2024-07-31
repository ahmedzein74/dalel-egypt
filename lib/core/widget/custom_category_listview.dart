import 'package:dalel_egypt/core/utils/app_assets.dart';
import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: ListView.separated(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return CustomCategoryListViewItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 16,
          );
        },
      ),
    );
  }
}

class CustomCategoryListViewItem extends StatelessWidget {
  const CustomCategoryListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 74,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: AppColors.grey, blurRadius: 5),
          ]),
      child: Column(
        children: [
          Container(
            height: 96,
            width: 74,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7), topRight: Radius.circular(7)),
                image: DecorationImage(
                    image: AssetImage(
                      Assets.assetsImagesRichard,
                    ),
                    fit: BoxFit.fill)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.center,
            ' Egypt',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: AppTextStylies.poppins400Style16.copyWith(
                fontWeight: FontWeight.w500, color: AppColors.deepBrwon),
          ),
        ],
      ),
    );
  }
}
