import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/home/ui/widgets/custom_horizental_item.dart';

import '../../data/models/item_model.dart';

class SecondItemListView extends StatelessWidget {
  SecondItemListView({super.key});
  final List<ItemModel> itemList = [
    ItemModel(
        title: 'Pink Bag',
        price: '234.90',
        image: 'assets/Rectangle 2.png'),
    ItemModel(
        title: 'Brown candy',
        price: ' 500',
        image: 'assets/Rectangle 1.png'),
    ItemModel(
        title: 'Offwhite ',
        price: '344.89',
        image: 'assets/pic2.png'),
    ItemModel(
        title: 'title',
        price: ' 400.00',
        image: 'assets/pic1.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 4.w),
              child: CustomHorizentalItem(
                image: itemList[index].image,
                title: itemList[index].title,
                price: itemList[index].price,
                containerHeight: 380.h,
                containerWidth: 140.w,
                imageHeight: 230.h,
              ),
            );
          }),
    );
  }
}
