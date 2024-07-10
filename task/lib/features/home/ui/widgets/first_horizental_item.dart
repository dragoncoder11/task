import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/core/helper/spacing.dart';
import 'package:task/core/theming/styles.dart';

import '../../../../core/theming/colors.dart';

class FirstHorizentalItem extends StatelessWidget {
  const FirstHorizentalItem({
    super.key, required this.title, required this.price, required this.oldPrice,required this.image,
  });
final String title;
final String price;
final String oldPrice;
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.h,
      width: 120.w,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 200.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          verticalSpace(40.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: Styles.font12BlackWeight500,
                    ),
                   const Icon(
                      FontAwesomeIcons.heart,
                      color: lightBrown,
                      size: 16,
                    )
                  ],
                ),
                verticalSpace(36.h),
                 Text(
                  price,
                  style: Styles.font12LightBrownkWeight500,
                ),
                Text(
                  oldPrice,
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
