import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theming/colors.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';

class UpComingFirstItem extends StatelessWidget {
  const UpComingFirstItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/stackimage1.png',
              height: 180.h,
              width: 90.w,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/stack1.png',
              height: 150.h,
              width: 70.w,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/Rectangle 30.png',
              height: 150.h,
              width: 60.w,
            ),
            Image.asset(
              'assets/Rectangle 28.png',
              height: 150.h,
              width: 70.w,
            ),
            Image.asset(
              'assets/Rectangle 29.png',
              height: 150.h,
              width: 70.w,
            ),
            Positioned(
              bottom: 4.h,
              left: 4.w,
              child: Image.asset(
                'assets/Star 1.png',
                height: 20.h,
                width: 16.w,
              ),
            ),
            Positioned(
              bottom: 10.h,
              right: 5.w,
              child: Image.asset(
                'assets/Star 1.png',
                height: 20.h,
                width: 16.w,
              ),
            ),
            Positioned(
              top: 6.h,
              right: 18.w,
              child: Image.asset(
                'assets/Star 1.png',
                height: 20.h,
                width: 16.w,
              ),
            ),
            Positioned(
              top: 65.h,
              left: 20.w,
              child: Image.asset(
                'assets/Star 1.png',
                height: 20.h,
                width: 16.w,
              ),
            ),
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/stackimage2.png',
              height: 180.h,
              width: 110.w,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 58.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      color: greyColor,
                      border: Border.all(color: Colors.white)),
                  child: Column(
                    children: [
                      Text(
                        'Extra 37% Off',
                        style: Styles.font9WhiteWeight600.copyWith(fontSize: 8),
                      ),
                      Text(
                        '+ Cashback 15%',
                        style: Styles.font9BlackWeight600.copyWith(fontSize: 8),
                      ),
                    ],
                  ),
                ),
                verticalSpace(7),
                Container(
                  height: 33.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      color: greyColor,
                      border: Border.all(color: Colors.white)),
                  child: Center(
                    child: Text(
                      '24-26 December ',
                      style: Styles.font9WhiteWeight600.copyWith(fontSize: 8),
                    ),
                  ),
                ),
                verticalSpace(7),
                Container(
                  height: 33.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      color: lightBrown,
                      border: Border.all(color: Colors.white)),
                  child: Center(
                    child: Text('Remind me', style: Styles.font9WhiteWeight600),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
