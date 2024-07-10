import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helper/spacing.dart';
import 'package:task/core/theming/colors.dart';
import 'package:task/core/theming/styles.dart';
import 'package:task/features/home/ui/widgets/custom_see_all_row.dart';
import 'package:task/features/home/ui/widgets/custom_time_card.dart';
import 'package:task/features/home/ui/widgets/fifth_item_list_view.dart';
import 'package:task/features/home/ui/widgets/first_item_list_view.dart';
import 'package:task/features/home/ui/widgets/fourth_item_list_view.dart';
import 'package:task/features/home/ui/widgets/second_item_list_view.dart';
import 'package:task/features/home/ui/widgets/six_item_list_view.dart';
import 'package:task/features/home/ui/widgets/third_item_list_view.dart';
import 'package:task/features/home/ui/widgets/upcoming_first_item.dart';
import 'package:task/features/home/ui/widgets/upcoming_second_item.dart';
import 'custom_search_row.dart';

class ShopScreenBody extends StatelessWidget {
  const ShopScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h),
          child: Column(
            children: [
              const CustomSearchRow(),
              verticalSpace(24),
              Image.asset(
                'assets/pic1.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              verticalSpace(40.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Discount ends in',
                          style: Styles.font12BlackWeight500,
                        ),
                        const CustomTimeCard(time: '22'),
                        const Text(":",
                            style: TextStyle(
                                color: lightBrown,
                                fontWeight: FontWeight.bold)),
                        const CustomTimeCard(time: '22'),
                        const Text(":",
                            style: TextStyle(
                                color: lightBrown,
                                fontWeight: FontWeight.bold)),
                        const CustomTimeCard(time: '22'),
                      ],
                    ),
                    Text(
                      'See all',
                      style: Styles.font12LightBrownkWeight500,
                    )
                  ],
                ),
              ),
              verticalSpace(40.h),
              FirstItemListView(),
              verticalSpace(50.h),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upcoming promotion',
                          style: Styles.font11BlackWeight500,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Text(
                            'See all',
                            style: Styles.font9LightBrownWeight600,
                          ),
                        )
                      ],
                    ),
                    verticalSpace(50.h),
                    SizedBox(
                      height: 180.h,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          const UpComingFirstItem(),
                          horizentalSpace(10.w),
                          const UpComingSecondtItem(),
                          horizentalSpace(10.w),
                          const UpComingFirstItem(),
                        ],
                      ),
                    ),
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
                    const CustomSeeAllRow(
                        title: 'New in Wedding &  Social events '),
                    verticalSpace(50.h),
                    FifthItemListView(),
                    verticalSpace(50.h),
                    const CustomSeeAllRow(title: 'Software Services'),
                    verticalSpace(50.h),
                    SixItemListView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
