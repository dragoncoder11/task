import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CustomTimeCard extends StatelessWidget {
  const CustomTimeCard({
    super.key,
    required this.time,
  });
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 19,
        width: 19,
        decoration: BoxDecoration(
            color: lightBrown, borderRadius: BorderRadius.circular(3)),
        child: Center(
          child: Text(
            time,
            style: Styles.font9WhiteWeight600,
          ),
        ),
      ),
    );
  }
}
