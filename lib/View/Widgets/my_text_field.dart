import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac/constants/const.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.hintText,required this.controller,
  });

  final String hintText;
    final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: MyColors.shadowColor, blurRadius: 8)
            ]),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: MyColors.primaryColor,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
              hintText: hintText,
              hintStyle: const TextStyle(color: MyColors.shadowColor),
              contentPadding: EdgeInsets.symmetric(horizontal: 25.w)),
        ));
  }
}
