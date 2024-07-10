import 'package:flutter/material.dart';
import 'package:task/core/theming/colors.dart';
import 'package:task/core/theming/styles.dart';

import 'custom_time_card.dart';

class TimeRow extends StatelessWidget {
  const TimeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
                style:
                    TextStyle(color: lightBrown, fontWeight: FontWeight.bold)),
            const CustomTimeCard(time: '22'),
            const Text(":",
                style:
                    TextStyle(color: lightBrown, fontWeight: FontWeight.bold)),
            const CustomTimeCard(time: '22'),
          ],
        ),
        Text(
          'See all',
          style: Styles.font12LightBrownkWeight500,
        )
      ],
    );
  }
}
