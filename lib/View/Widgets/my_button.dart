import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac/My%20Widgets/c_text.dart';
import 'package:tic_tac/constants/const.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      this.onPressed,
      required this.text,
      required this.onTap,
      this.width,
      this.hight,
      this.shadowTextColor});
  final void Function()? onPressed;
  final String text;
  final void Function() onTap;
  final double? width;
  final double? hight;
  final Color? shadowTextColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 180.w,
        height: hight ?? 50.h,
        decoration: BoxDecoration(
            color: MyColors.primaryColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: MyColors.shadowColor, blurRadius: 5)
            ]),
        child: Center(
          child: Ctext(
            text: text,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                  color: shadowTextColor ?? MyColors.shadowColor,
                  blurRadius: 10)
            ],
          ),
        ),
      ),
    );
  }
}
