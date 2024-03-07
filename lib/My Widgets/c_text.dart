import 'package:flutter/material.dart';

class Ctext extends StatelessWidget {
  const Ctext(
      {super.key,
      required this.text,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.textAlign,
      this.shadows});

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: fontSize ?? 20,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? Colors.white,
          shadows: shadows),
    );
  }
}
