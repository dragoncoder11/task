import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/core/helper/spacing.dart';
import 'package:task/core/theming/colors.dart';
import 'package:task/core/theming/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/features/home/ui/widgets/custom_time_card.dart';
import 'package:task/features/home/ui/widgets/first_item_list_view.dart';

import 'custom_search_row.dart';

class ShopScreenBody extends StatelessWidget {
  const ShopScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          verticalSpace(30),
          const CustomSearchRow(),
          verticalSpace(16),
          Image.asset(
            'assets/pic1.png',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          verticalSpace(40.h),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 18.w),
            child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Discount ends in',
                      style: Styles.font12BlackWeight500,
                    ),
                       CustomTimeCard(time: '22'),
                Text(":",
                    style: TextStyle(
                        color: lightBrown, fontWeight: FontWeight.bold)),
                CustomTimeCard(time: '22'),
                Text(":",
                    style: TextStyle(
                        color: lightBrown, fontWeight: FontWeight.bold)),
                CustomTimeCard(time: '22'),
                  ],
                ),
             
                Text('See all',style: Styles.font12LightBrownkWeight500,)
              ],
            ),
          ),
          verticalSpace(40.h),
         FirstItemListView(),
         verticalSpace(50.h),
       const  Padding(
           padding: EdgeInsets.symmetric(horizontal: 12),
           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Text('Upcoming promotion',style: Styles.font11BlackWeight500,),
            Text('See all',style: Styles.font9LightBrownWeight600,)
           ],),
         ),
          verticalSpace(50.h),


        ],
      ),
    );
  }
}
