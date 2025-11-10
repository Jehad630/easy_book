import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.backgroundColor,
    required this.textcolor,
    required this.borderRadius,
    this.onPressed, this.height, this.width, this.style,
  });
  final String title;
  final Color? backgroundColor, textcolor;
  final double? borderRadius,height,width;
  final void Function()? onPressed;
  final TextStyle? style;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height ?? 32,
      width: width ?? 87,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? Color(0xffFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(borderRadius ?? 12),
          ),
        ),
        child: Text(
          title,
          style: style ??  TextStyle(
            fontSize: 12,
            color: textcolor ?? Colors.black,
            fontWeight: FontWeight.bold,
          ) /*TextStyle(color: textcolor)*/,
        ),
      ),
    );
  }
}
