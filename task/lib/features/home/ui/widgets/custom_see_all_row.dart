
import 'package:flutter/material.dart';
import 'package:task/core/theming/styles.dart';

class CustomSeeAllRow extends StatelessWidget {
  const CustomSeeAllRow({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.font12BlackWeight500,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            'See all',
            style: Styles.font12LightBrownkWeight500,
          ),
        ),
      ],
    );
  }
}
