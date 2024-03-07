import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tic_tac/Controller/create_room_controller.dart';
import 'package:tic_tac/View/Widgets/my_button.dart';
import 'package:tic_tac/View/Widgets/my_text_field.dart';

class CreateRoomPage extends StatelessWidget {
  const CreateRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    CreateRoomController controller = Get.put(CreateRoomController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyTextFormField(
                  hintText: 'Enter your room name',
                  controller: controller.roomController),
              SizedBox(height: 30.h),
              MyButton(text: 'Create', onTap: () =>controller.createRoom())
            ],
          ),
        ),
      ),
    );
  }
}
