import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/core/helper/spacing.dart';
import 'package:task/core/theming/styles.dart';
import '../../../../core/theming/colors.dart';

class CustomHorizentalItem extends StatelessWidget {
  const CustomHorizentalItem({
    super.key,
    required this.title,
    required this.price,
    this.oldPrice,
    required this.image,
    required this.containerWidth,
    required this.imageHeight,
  });
  final String title;
  final String price;
  final String? oldPrice;
  final String image;
  final double containerWidth;
  final double imageHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: imageHeight,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          verticalSpace(35.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: Styles.font12BlackWeight500,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Icon(
                      FontAwesomeIcons.heart,
                      color: lightBrown,
                      size: 16,
                    )
                  ],
                ),
                verticalSpace(22.h),
                Text(
                  price,
                  style: Styles.font12LightBrownkWeight500,
                ),
                Text(
                  oldPrice ?? '',
                  style: Styles.font9BlueBlackWeight400.copyWith(
                      color: lightGrey, decoration: TextDecoration.lineThrough),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
