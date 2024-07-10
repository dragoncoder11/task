import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/core/helper/spacing.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CustomSearchRow extends StatelessWidget {
  const CustomSearchRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Container(
            height: verticalQuery(context, .09),
            width: horizentalQuery(context, .72),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16.w, 6.h, 12.w, 8.h),
                  child: const Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: lightGrey,
                    size: 16,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 6.h, 0, 11.h),
                  child: Text(
                    'Search what you need',
                    style: Styles.font13LightGreyWeight400,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(
            Icons.photo_camera,
            size: 30,
            color: lightBrown,
          ),
        )
      ],
    );
  }
}
