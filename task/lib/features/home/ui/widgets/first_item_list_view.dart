import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/home/ui/widgets/custom_horizental_item.dart';

import '../../data/models/item_model.dart';

class FirstItemListView extends StatelessWidget {
  FirstItemListView({super.key});
  final List<ItemModel> itemList = [
    ItemModel(
        title: 'Crochet',
        price: ' 400.00',
        oldPrice: ' 412.00',
        image: 'assets/pic1.png'),
    ItemModel(
        title: 'Wood',
        price: ' 400.00',
        oldPrice: ' 412.00',
        image: 'assets/pic2.png'),
    ItemModel(
        title: 'Bags',
        price: ' 400.00',
        oldPrice: ' 412.00',
        image: 'assets/pic3.png'),
    ItemModel(
        title: 'title',
        price: ' 400.00',
        oldPrice: ' 412.00',
        image: 'assets/pic1.png'),
    ItemModel(
        title: 'Wood',
        price: ' 400.00',
        oldPrice: ' 412.00',
        image: 'assets/pic2.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: SizedBox(
        height: 384.h,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: itemList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: 5.w,
                ),
                child: CustomHorizentalItem(
                  image: itemList[index].image,
                  title: itemList[index].title,
                  price: itemList[index].price,
                  oldPrice: itemList[index].oldPrice!,
                  containerWidth: 120.w,
                  imageHeight: 200.h,
                ),
              );
            }),
      ),
    );
  }
}
