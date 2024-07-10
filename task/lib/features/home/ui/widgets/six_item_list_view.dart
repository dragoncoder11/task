import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/home/ui/widgets/custom_horizental_item.dart';
import '../../data/models/item_model.dart';

class SixItemListView extends StatelessWidget {
  SixItemListView({super.key});
  final List<ItemModel> itemList = [
    ItemModel(
        title: 'website Design',
        price: '234.90',
        image: 'assets/Rectangle 10.png'),
    ItemModel(
        title: 'Development', price: ' 500', image: 'assets/Rectangle 11.png'),
    ItemModel(
        title: 'Graghic Design ', price: '344.89', image: 'assets/pic2.png'),
    ItemModel(title: 'title', price: ' 400.00', image: 'assets/pic1.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 382.h,
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
                containerWidth: 142.w,
                imageHeight: 250.h,
              ),
            );
          }),
    );
  }
}
