import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.backgroundColor,
    required this.textcolor,
    required this.borderRadius,
    this.onPressed,
  });
  final String title;
  final Color? backgroundColor, textcolor;
  final double borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 87,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? Color(0xffFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(borderRadius),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: textcolor ?? Colors.black,
            fontWeight: FontWeight.bold,
          ) /*TextStyle(color: textcolor)*/,
        ),
      ),
    );
  }
}
