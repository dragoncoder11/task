import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helper/spacing.dart';

import 'custom_see_all_row.dart';
import 'fifth_item_list_view.dart';
import 'fourth_item_list_view.dart';
import 'second_item_list_view.dart';
import 'six_item_list_view.dart';
import 'third_item_list_view.dart';

class CustomGroupedListView extends StatelessWidget {
  const CustomGroupedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(50.h),
        const CustomSeeAllRow(title: 'New in Bags & watches'),
        verticalSpace(50.h),
        SecondItemListView(),
        verticalSpace(50.h),
        const CustomSeeAllRow(
          title: 'New in Crochet Clothes',
        ),
        verticalSpace(50.h),
        ThirdItemListView(),
        verticalSpace(50.h),
        const CustomSeeAllRow(title: 'New in Antiqes & Ceramic'),
        verticalSpace(50.h),
        FourthItemListView(),
        verticalSpace(50.h),
        const CustomSeeAllRow(title: 'New in Wedding &  Social events '),
        verticalSpace(50.h),
        FifthItemListView(),
        verticalSpace(50.h),
        const CustomSeeAllRow(title: 'Software Services'),
        verticalSpace(50.h),
        SixItemListView(),
      ],
    );
  }
}
