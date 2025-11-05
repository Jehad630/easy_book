import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.textcolor,
    required this.height,
    required this.width,
    required this.borderRadius,
    this.onPressed,
  });
  final String title;
  final Color backgroundColor, textcolor;
  final double height, width, borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(borderRadius),
          ),
        ),
        child: Text(title, style: TextStyle(color: textcolor)),
      ),
    );
  }
}
