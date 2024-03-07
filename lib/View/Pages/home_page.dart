import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tic_tac/Controller/homepage_controller.dart';
import 'package:tic_tac/View/Widgets/my_button.dart';
import 'package:tic_tac/constants/const.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController controller = Get.put(HomePageController());
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                  text: 'Create room',
                  onTap: () => controller.goToCreatePage()),
              SizedBox(height: 25.h),
              MyButton(
                text: 'Join room',
                onTap: () {},
                shadowTextColor: MyColors.shadowColor2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
