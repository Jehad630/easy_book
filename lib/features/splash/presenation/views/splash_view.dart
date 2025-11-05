import 'package:easy_book/features/splash/presenation/views/widgets/splas_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171B36),
      body: Splas_view_body(),
    );
  }
}
