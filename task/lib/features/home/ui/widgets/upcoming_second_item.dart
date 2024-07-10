import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theming/colors.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';

class UpComingSecondtItem extends StatelessWidget {
  const UpComingSecondtItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/stackimage3.png',
              height: 180.h,
              width: 90.w,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/stack3.png',
              height: 150.h,
              width: 70.w,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: .1.h,
              left: .1.w,
              child: Image.asset(
                'assets/pointing 1.png',
                height: 40.h,
                width: 40.w,
              ),
            ),
            Positioned(
              top: .1.h,
              left: .1.w,
              child: Image.asset(
                'assets/pointing 2.png',
                height: 40.h,
                width: 40.w,
              ),
            ),
            Positioned(
              top: .1.h,
              right: .1.w,
              child: Image.asset(
                'assets/pointing 3.png',
                height: 40.h,
                width: 40.w,
              ),
            ),
            Positioned(
              bottom: .1.h,
              right: .1.w,
              child: Image.asset(
                'assets/pointing 4.png',
                height: 40.h,
                width: 40.w,
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
                SizedBox(
                  width: 104,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Promo up to 15% for Mybeline MAGNUM',
                        style: Styles.font9BlackWeight600.copyWith(fontSize: 7),
                        maxLines: 2,
                      ),
                      verticalSpace(10),
                      Text(
                        'Enjoy special promos for you from selected brands',
                        style: Styles.font13LightGreyWeight400
                            .copyWith(fontSize: 5),
                        maxLines: 2,
                      ),
                      Text(
                        '25-26 December',
                        style: Styles.font9BlackWeight600.copyWith(fontSize: 6),
                        maxLines: 2,
                      ),
                      verticalSpace(7),
                      Center(
                        child: Container(
                          height: 33.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                              color: lightBrown,
                              border: Border.all(color: Colors.white)),
                          child: Center(
                            child: Text('Remind me',
                                style: Styles.font9WhiteWeight600),
                          ),
                        ),
                      ),
                    ],
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
