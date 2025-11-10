import 'package:easy_book/features/serach/presenation/views/widgets/serach_view_body.dart';
import 'package:flutter/material.dart';

class SerachView extends StatelessWidget {
  const SerachView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: SerachViewBody());
  }
}
