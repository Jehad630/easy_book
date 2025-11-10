import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_book/core/widget/Custom_Loading.dart';
import 'package:flutter/material.dart';

class CustomBookWidget extends StatelessWidget {
  const CustomBookWidget({super.key, this.ImageLink});
  final String? ImageLink;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3.3,
      child: CachedNetworkImage(
        imageUrl:
            ImageLink ??
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0wUdZyXhG2dwDhA2pPng6QSs5jpXVV8jHIz8Z64ZQ2zLqDrgMXSUFvwZ3aOZ9KQW0_mA&usqp=CAU",
        fit: BoxFit.fill,
        placeholder: (context, url) => CustomLoading(),
        errorWidget: (context, url, error) =>
            Icon(Icons.error, color: Colors.red, size: 64),
      ),
    );
  }
}
