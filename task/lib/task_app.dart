import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/home/ui/screens/home_screen.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
        designSize: Size(375, 1755), 
        minTextAdapt: true,
         child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
         ));
  }
}
