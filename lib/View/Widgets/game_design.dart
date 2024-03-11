import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tic_tac/Controller/game_controller.dart';
import 'package:tic_tac/constants/const.dart';

class GameDesign extends StatelessWidget {
  const GameDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(GameController());
    return Expanded(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h),
              itemBuilder: (context, index) => Citem(
                    index: index,
                  ))),
    );
  }
}

class Citem extends StatelessWidget {
  final int index;
  const Citem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    GameController controller = Get.find<GameController>();
    return GestureDetector(
      onTap: () => controller.ontap(index),
      child: Container(
        decoration: BoxDecoration(
            color: MyColors.primaryColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(blurRadius: 2, color: MyColors.shadowColor)
            ]),
        child: Center(
          child: GetBuilder<GameController>(
            builder: (controller) => Text(
              controller.game[index],
              style: TextStyle(
                  fontSize: 80.sp,
                  fontWeight: FontWeight.bold,
                  color: MyColors.primaryColor,
                  shadows: const [
                    Shadow(blurRadius: 20, color: MyColors.shadowColor)
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
